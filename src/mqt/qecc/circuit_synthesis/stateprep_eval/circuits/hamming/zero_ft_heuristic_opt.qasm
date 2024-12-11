OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
qreg z_anc[2];
creg z_c[2];
h q[0];
h q[1];
h q[3];
h q[7];
cx q[7],q[11];
cx q[3],q[5];
cx q[1],q[2];
cx q[11],q[13];
cx q[7],q[9];
cx q[5],q[6];
cx q[3],q[4];
cx q[0],q[2];
cx q[13],q[14];
cx q[11],q[12];
cx q[9],q[10];
cx q[7],q[8];
cx q[1],q[5];
cx q[0],q[4];
cx q[2],q[6];
cx q[3],q[11];
cx q[1],q[9];
cx q[0],q[8];
cx q[5],q[13];
cx q[4],q[12];
cx q[2],q[10];
cx q[6],q[14];
cx q[5],z_anc[0];
cx q[10],z_anc[0];
cx q[12],z_anc[0];
cx q[1],z_anc[1];
cx q[3],z_anc[1];
cx q[8],z_anc[1];
cx q[14],z_anc[1];
measure z_anc[0] -> z_c[0];
measure z_anc[1] -> z_c[1];
