OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
qreg z_anc[2];
qreg x_anc[1];
qreg a4[1];
creg z_c[2];
creg x_c[1];
creg c4[1];
h q[0];
h q[1];
h q[2];
h q[4];
h q[7];
cx q[7],q[11];
cx q[1],q[5];
cx q[7],q[9];
cx q[4],q[10];
cx q[2],q[8];
cx q[1],q[3];
cx q[0],q[6];
cx q[10],q[9];
cx q[8],q[7];
cx q[6],q[11];
cx q[4],q[3];
cx q[2],q[1];
cx q[0],q[5];
cx q[11],q[10];
cx q[9],q[8];
cx q[7],q[6];
cx q[5],q[4];
cx q[3],q[2];
cx q[1],q[0];
cx q[2],z_anc[0];
cx q[4],z_anc[0];
cx q[8],z_anc[0];
cx q[10],z_anc[0];
cx q[1],z_anc[1];
cx q[4],z_anc[1];
cx q[7],z_anc[1];
cx q[10],z_anc[1];
measure z_anc[0] -> z_c[0];
measure z_anc[1] -> z_c[1];
h x_anc[0];
cx x_anc[0],q[1];
cx x_anc[0],a4[0];
cx x_anc[0],q[3];
cx x_anc[0],q[5];
cx x_anc[0],q[7];
cx x_anc[0],q[9];
cx x_anc[0],a4[0];
measure a4[0] -> c4[0];
cx x_anc[0],q[11];
h x_anc[0];
measure x_anc[0] -> x_c[0];
