OPENQASM 2.0;
include "qelib1.inc";
qreg q[19];
qreg z_anc[5];
qreg x_anc[4];
qreg a20[9];
qreg a21[2];
qreg a22[1];
qreg a23[9];
creg z_c[5];
creg x_c[4];
creg c20[9];
creg c21[2];
creg c22[1];
creg c23[9];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[10];
h q[12];
cx q[6],q[16];
cx q[4],q[13];
cx q[3],q[7];
cx q[12],q[17];
cx q[10],q[18];
cx q[7],q[11];
cx q[6],q[3];
cx q[4],q[8];
cx q[2],q[16];
cx q[1],q[15];
cx q[0],q[14];
cx q[11],q[12];
cx q[10],q[13];
cx q[8],q[9];
cx q[6],q[0];
cx q[5],q[2];
cx q[4],q[3];
cx q[1],q[7];
cx q[17],q[18];
cx q[14],q[15];
cx q[5],q[9];
cx q[16],q[4];
cx q[13],q[11];
cx q[12],q[10];
cx q[7],q[6];
cx q[2],q[8];
cx q[0],q[1];
cx q[2],z_anc[0];
cx q[8],z_anc[0];
cx q[10],z_anc[0];
cx q[11],z_anc[0];
cx q[17],z_anc[0];
cx q[0],z_anc[1];
cx q[4],z_anc[1];
cx q[5],z_anc[1];
cx q[7],z_anc[1];
cx q[8],z_anc[1];
cx q[10],z_anc[1];
cx q[15],z_anc[1];
cx q[18],z_anc[1];
cx q[0],z_anc[2];
cx q[2],z_anc[2];
cx q[3],z_anc[2];
cx q[6],z_anc[2];
cx q[9],z_anc[2];
cx q[15],z_anc[2];
cx q[16],z_anc[2];
cx q[4],z_anc[3];
cx q[5],z_anc[3];
cx q[6],z_anc[3];
cx q[7],z_anc[3];
cx q[8],z_anc[3];
cx q[0],z_anc[4];
cx q[1],z_anc[4];
cx q[2],z_anc[4];
cx q[3],z_anc[4];
cx q[4],z_anc[4];
cx q[5],z_anc[4];
cx q[6],z_anc[4];
cx q[7],z_anc[4];
cx q[8],z_anc[4];
cx q[9],z_anc[4];
cx q[11],z_anc[4];
cx q[13],z_anc[4];
cx q[14],z_anc[4];
cx q[15],z_anc[4];
cx q[16],z_anc[4];
measure z_anc[0] -> z_c[0];
measure z_anc[1] -> z_c[1];
measure z_anc[2] -> z_c[2];
measure z_anc[3] -> z_c[3];
measure z_anc[4] -> z_c[4];
h x_anc[0];
cx x_anc[0],a20[0];
cx x_anc[0],a20[1];
cx x_anc[0],a20[2];
cx x_anc[0],a20[3];
cx x_anc[0],a20[4];
cx x_anc[0],a20[5];
cx x_anc[0],a20[6];
cx x_anc[0],a20[7];
cx x_anc[0],a20[8];
cx x_anc[0],q[0];
cx x_anc[0],a20[6];
measure a20[6] -> c20[6];
reset a20[6];
cx x_anc[0],a20[6];
cx x_anc[0],q[3];
cx x_anc[0],a20[4];
measure a20[4] -> c20[4];
reset a20[4];
cx x_anc[0],a20[4];
cx x_anc[0],q[4];
cx x_anc[0],a20[2];
measure a20[2] -> c20[2];
reset a20[2];
cx x_anc[0],a20[2];
cx x_anc[0],q[5];
cx x_anc[0],a20[7];
measure a20[7] -> c20[7];
reset a20[7];
cx x_anc[0],a20[7];
cx x_anc[0],q[6];
cx x_anc[0],a20[0];
measure a20[0] -> c20[0];
reset a20[0];
cx x_anc[0],a20[0];
cx x_anc[0],q[8];
cx x_anc[0],a20[5];
measure a20[5] -> c20[5];
reset a20[5];
cx x_anc[0],a20[5];
cx x_anc[0],q[11];
cx x_anc[0],a20[3];
measure a20[3] -> c20[3];
reset a20[3];
cx x_anc[0],a20[3];
cx x_anc[0],q[15];
cx x_anc[0],a20[8];
measure a20[8] -> c20[8];
cx x_anc[0],a20[1];
measure a20[1] -> c20[1];
cx x_anc[0],a20[3];
measure a20[3] -> c20[3];
cx x_anc[0],a20[5];
measure a20[5] -> c20[5];
cx x_anc[0],a20[0];
measure a20[0] -> c20[0];
cx x_anc[0],a20[7];
measure a20[7] -> c20[7];
cx x_anc[0],a20[2];
measure a20[2] -> c20[2];
cx x_anc[0],a20[4];
measure a20[4] -> c20[4];
cx x_anc[0],a20[6];
measure a20[6] -> c20[6];
cx x_anc[0],q[18];
h x_anc[0];
measure x_anc[0] -> x_c[0];
h x_anc[1];
cx x_anc[1],q[0];
cx x_anc[1],a21[0];
cx x_anc[1],q[3];
cx x_anc[1],a21[1];
cx x_anc[1],q[5];
cx x_anc[1],q[7];
cx x_anc[1],a21[0];
measure a21[0] -> c21[0];
cx x_anc[1],q[9];
cx x_anc[1],a21[1];
measure a21[1] -> c21[1];
cx x_anc[1],q[15];
h x_anc[1];
measure x_anc[1] -> x_c[1];
h x_anc[2];
cx x_anc[2],q[4];
cx x_anc[2],a22[0];
cx x_anc[2],q[5];
cx x_anc[2],q[9];
cx x_anc[2],a22[0];
measure a22[0] -> c22[0];
cx x_anc[2],q[16];
h x_anc[2];
measure x_anc[2] -> x_c[2];
h x_anc[3];
cx x_anc[3],a23[0];
cx x_anc[3],a23[1];
cx x_anc[3],a23[2];
cx x_anc[3],a23[3];
cx x_anc[3],a23[4];
cx x_anc[3],a23[5];
cx x_anc[3],a23[6];
cx x_anc[3],a23[7];
cx x_anc[3],a23[8];
cx x_anc[3],q[0];
cx x_anc[3],a23[6];
measure a23[6] -> c23[6];
reset a23[6];
cx x_anc[3],a23[6];
cx x_anc[3],q[1];
cx x_anc[3],a23[4];
measure a23[4] -> c23[4];
reset a23[4];
cx x_anc[3],a23[4];
cx x_anc[3],q[3];
cx x_anc[3],a23[2];
measure a23[2] -> c23[2];
reset a23[2];
cx x_anc[3],a23[2];
cx x_anc[3],q[6];
cx x_anc[3],a23[7];
measure a23[7] -> c23[7];
reset a23[7];
cx x_anc[3],a23[7];
cx x_anc[3],q[7];
cx x_anc[3],a23[0];
measure a23[0] -> c23[0];
reset a23[0];
cx x_anc[3],a23[0];
cx x_anc[3],q[10];
cx x_anc[3],a23[5];
measure a23[5] -> c23[5];
reset a23[5];
cx x_anc[3],a23[5];
cx x_anc[3],q[11];
cx x_anc[3],a23[3];
measure a23[3] -> c23[3];
reset a23[3];
cx x_anc[3],a23[3];
cx x_anc[3],q[14];
cx x_anc[3],a23[8];
measure a23[8] -> c23[8];
cx x_anc[3],a23[1];
measure a23[1] -> c23[1];
cx x_anc[3],a23[3];
measure a23[3] -> c23[3];
cx x_anc[3],a23[5];
measure a23[5] -> c23[5];
cx x_anc[3],a23[0];
measure a23[0] -> c23[0];
cx x_anc[3],a23[7];
measure a23[7] -> c23[7];
cx x_anc[3],a23[2];
measure a23[2] -> c23[2];
cx x_anc[3],a23[4];
measure a23[4] -> c23[4];
cx x_anc[3],a23[6];
measure a23[6] -> c23[6];
cx x_anc[3],q[15];
h x_anc[3];
measure x_anc[3] -> x_c[3];