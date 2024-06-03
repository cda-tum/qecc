from __future__ import annotations

import locale
from typing import TYPE_CHECKING

import stim
from sinter import CompiledDecoder, Decoder
from stimbposd import SinterDecoder_BPOSD

from mqt.qecc.cc_decoder.stim_interface.max_sat_stim_decoder import MaxSatStim

if TYPE_CHECKING:
    import pathlib

    import numpy as np


class SinterCompiledDecoder_MAXSAT(CompiledDecoder):
    def __init__(self, decoder: MAXSAT, **kwargs) -> None:
        self.decoder = decoder

        if kwargs:
            self.convergence_cnt = 0
            self.not_convergence_cnt = 0
            self.d = kwargs["d"]
            self.p = kwargs["p"]
            self.measure_convergence = True
        else:
            self.measure_convergence = False

    def decode_shots_bit_packed(
        self,
        *,
        bit_packed_detection_event_data: np.ndarray,
    ) -> np.ndarray:
        predictions, converged_cnt, not_converged_cnt = self.decoder.decode_batch(
            shots=bit_packed_detection_event_data,
            bit_packed_shots=True,
            bit_packed_predictions=True,
        )
        if self.measure_convergence:
            self.convergence_cnt += converged_cnt
            self.not_convergence_cnt += not_converged_cnt
            with open("convergence_rate.txt", "a", encoding=locale.getpreferredencoding(False)) as self.f:
                self.f.write(
                    str(self.d)
                    + " "
                    + str(self.p)
                    + " "
                    + str(self.convergence_cnt)
                    + " "
                    + str(self.not_convergence_cnt)
                    + "\n"
                )

        return predictions


class SinterDecoder_MAXSAT(Decoder):
    def __init__(
        self,
        **maxsat_kwargs,
    ) -> None:
        self.maxsat_kwargs = maxsat_kwargs

    def compile_decoder_for_dem(self, *, dem: stim.DetectorErrorModel) -> CompiledDecoder:
        maxsat = MaxSatStim(
            model=dem,
            #            **self.maxsat_kwargs,
        )
        return SinterCompiledDecoder_MAXSAT(maxsat, **self.maxsat_kwargs)

    def decode_via_files(
        self,
        *,
        num_shots: int,
        num_dets: int,
        num_obs: int,
        dem_path: pathlib.Path,
        dets_b8_in_path: pathlib.Path,
        obs_predictions_b8_out_path: pathlib.Path,
        tmp_dir: pathlib.Path,
    ) -> None:
        """Performs decoding by reading problems from, and writing solutions to, file paths.

        Args:
            num_shots: The number of times the circuit was sampled. The number of problems
                to be solved.
            num_dets: The number of detectors in the circuit. The number of detection event
                bits in each shot.
            num_obs: The number of observables in the circuit. The number of predicted bits
                in each shot.
            dem_path: The file path where the detector error model should be read from,
                e.g. using `stim.DetectorErrorModel.from_file`. The error mechanisms
                specified by the detector error model should be used to configure the
                decoder.
            dets_b8_in_path: The file path that detection event data should be read from.
                Note that the file may be a named pipe instead of a fixed size object.
                The detection events will be in b8 format (see
                https://github.com/quantumlib/Stim/blob/main/doc/result_formats.md ). The
                number of detection events per shot is available via the `num_dets`
                argument or via the detector error model at `dem_path`.
            obs_predictions_b8_out_path: The file path that decoder predictions must be
                written to. The predictions must be written in b8 format (see
                https://github.com/quantumlib/Stim/blob/main/doc/result_formats.md ). The
                number of observables per shot is available via the `num_obs` argument or
                via the detector error model at `dem_path`.
            tmp_dir: Any temporary files generated by the decoder during its operation MUST
                be put into this directory. The reason for this requirement is because
                sinter is allowed to kill the decoding process without warning, without
                giving it time to clean up any temporary objects. All cleanup should be done
                via sinter deleting this directory after killing the decoder.
        """
        dem = stim.DetectorErrorModel.from_file(dem_path)
        max_sat = MaxSatStim(
            model=dem,
            **self.maxsat_kwargs,
        )
        shots = stim.read_shot_data_file(
            path=dets_b8_in_path,
            format="b8",
            num_detectors=dem.num_detectors,
            bit_packed=False,
        )
        predictions, _, _ = max_sat.decode_batch(shots)
        stim.write_shot_data_file(
            data=predictions,
            path=obs_predictions_b8_out_path,
            format="b8",
            num_observables=dem.num_observables,
        )


def sinter_decoders(**kwargs) -> dict[str, Decoder]:
    return {"maxsat": SinterDecoder_MAXSAT(**kwargs), "bposd": SinterDecoder_BPOSD()}
