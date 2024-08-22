OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
qreg z_anc[1];
qreg x_anc[1];
qreg a6[1];
creg z_c[1];
creg x_c[1];
creg c6[1];
h q[1];
h q[2];
h q[4];
h q[6];
h q[8];
cx q[1],q[7];
cx q[6],q[9];
cx q[2],q[5];
cx q[7],q[0];
cx q[7],q[6];
cx q[4],q[10];
cx q[5],q[11];
cx q[9],q[3];
cx q[10],q[1];
cx q[8],q[5];
cx q[7],q[2];
cx q[8],q[4];
cx q[8],q[9];
cx q[2],q[8];
cx q[9],q[0];
cx q[4],q[7];
cx q[0],z_anc[0];
cx q[2],z_anc[0];
cx q[3],z_anc[0];
cx q[4],z_anc[0];
cx q[10],z_anc[0];
cx q[11],z_anc[0];
measure z_anc[0] -> z_c[0];
h x_anc[0];
cx x_anc[0],q[1];
cx x_anc[0],a6[0];
cx x_anc[0],q[4];
cx x_anc[0],q[6];
cx x_anc[0],q[8];
cx x_anc[0],q[9];
cx x_anc[0],a6[0];
measure a6[0] -> c6[0];
cx x_anc[0],q[11];
h x_anc[0];
measure x_anc[0] -> x_c[0];
