OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
qreg x_anc[1];
creg x_c[1];
h q[0];
h q[3];
h q[4];
h q[5];
h q[7];
cx q[0],q[1];
cx q[4],q[2];
cx q[7],q[8];
cx q[3],q[6];
cx q[1],q[2];
cx q[5],q[4];
cx q[8],q[3];
cx q[4],q[6];
h x_anc[0];
cx x_anc[0],q[2];
cx x_anc[0],q[3];
cx x_anc[0],q[4];
h x_anc[0];
measure x_anc[0] -> x_c[0];
