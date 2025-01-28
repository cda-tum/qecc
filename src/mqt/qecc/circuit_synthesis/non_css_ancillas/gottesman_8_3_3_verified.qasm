OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
qreg z_anc[2];
qreg x_anc[1];
qreg a7[1];
creg z_c[2];
creg x_c[1];
creg c7[1];
h q[0];
h q[1];
h q[3];
h q[5];
h q[8];
cx q[5],q[10];
cx q[3],q[12];
cx q[1],q[9];
cx q[12],q[14];
cx q[10],q[11];
cx q[8],q[9];
cx q[3],q[4];
cx q[1],q[2];
cx q[0],q[5];
cx q[14],q[15];
cx q[12],q[13];
cx q[8],q[10];
cx q[4],q[6];
cx q[1],q[7];
cx q[0],q[2];
cx q[9],q[11];
cx q[5],q[3];
cx q[8],q[12];
cx q[0],q[6];
cx q[10],q[14];
cx q[9],q[13];
cx q[5],q[7];
cx q[2],q[4];
cx q[11],q[15];
cx q[3],q[1];
cx q[6],z_anc[0];
cx q[7],z_anc[0];
cx q[9],z_anc[0];
cx q[14],z_anc[0];
cx q[3],z_anc[1];
cx q[4],z_anc[1];
cx q[12],z_anc[1];
cx q[15],z_anc[1];
measure z_anc[0] -> z_c[0];
measure z_anc[1] -> z_c[1];
h x_anc[0];
cx x_anc[0],q[1];
cx x_anc[0],a7[0];
cx x_anc[0],q[2];
cx x_anc[0],q[5];
cx x_anc[0],q[6];
cx x_anc[0],q[9];
cx x_anc[0],q[10];
cx x_anc[0],q[12];
cx x_anc[0],a7[0];
measure a7[0] -> c7[0];
cx x_anc[0],q[15];
h x_anc[0];
measure x_anc[0] -> x_c[0];
