OPENQASM 2.0;
include "qelib1.inc";
qreg q[31];
qreg z_anc[45];
qreg a0[1];
qreg a1[1];
qreg a2[1];
qreg a3[1];
qreg a4[1];
qreg a5[1];
qreg a6[1];
qreg a7[1];
qreg a8[1];
qreg a9[4];
qreg a10[1];
qreg a11[4];
qreg a12[1];
qreg a13[4];
qreg a14[1];
qreg a15[1];
qreg a16[1];
qreg a17[1];
qreg a18[1];
qreg a19[1];
qreg a20[1];
qreg a21[1];
qreg a22[1];
qreg a23[1];
qreg a24[4];
qreg a25[1];
qreg a26[4];
qreg a27[1];
qreg a28[4];
qreg a29[1];
qreg a30[1];
qreg a31[1];
qreg a32[1];
qreg a33[1];
qreg a34[1];
qreg a35[1];
qreg a36[1];
qreg a37[1];
qreg a38[1];
qreg a39[4];
qreg a40[1];
qreg a41[4];
qreg a42[1];
qreg a43[4];
qreg a44[1];
qreg x_anc[45];
qreg a45[1];
qreg a46[1];
qreg a47[1];
qreg a48[1];
qreg a49[1];
qreg a50[1];
qreg a51[1];
qreg a52[1];
qreg a53[1];
qreg a54[4];
qreg a55[1];
qreg a56[4];
qreg a57[1];
qreg a58[4];
qreg a59[1];
qreg a60[1];
qreg a61[1];
qreg a62[1];
qreg a63[1];
qreg a64[1];
qreg a65[1];
qreg a66[1];
qreg a67[1];
qreg a68[1];
qreg a69[4];
qreg a70[1];
qreg a71[4];
qreg a72[1];
qreg a73[4];
qreg a74[1];
qreg a75[1];
qreg a76[1];
qreg a77[1];
qreg a78[1];
qreg a79[1];
qreg a80[1];
qreg a81[1];
qreg a82[1];
qreg a83[1];
qreg a84[4];
qreg a85[1];
qreg a86[4];
qreg a87[1];
qreg a88[4];
qreg a89[1];
creg z_c[45];
creg c0[1];
creg c1[1];
creg c2[1];
creg c3[1];
creg c4[1];
creg c5[1];
creg c6[1];
creg c7[1];
creg c8[1];
creg c9[4];
creg c10[1];
creg c11[4];
creg c12[1];
creg c13[4];
creg c14[1];
creg c15[1];
creg c16[1];
creg c17[1];
creg c18[1];
creg c19[1];
creg c20[1];
creg c21[1];
creg c22[1];
creg c23[1];
creg c24[4];
creg c25[1];
creg c26[4];
creg c27[1];
creg c28[4];
creg c29[1];
creg c30[1];
creg c31[1];
creg c32[1];
creg c33[1];
creg c34[1];
creg c35[1];
creg c36[1];
creg c37[1];
creg c38[1];
creg c39[4];
creg c40[1];
creg c41[4];
creg c42[1];
creg c43[4];
creg c44[1];
creg x_c[45];
creg c45[1];
creg c46[1];
creg c47[1];
creg c48[1];
creg c49[1];
creg c50[1];
creg c51[1];
creg c52[1];
creg c53[1];
creg c54[4];
creg c55[1];
creg c56[4];
creg c57[1];
creg c58[4];
creg c59[1];
creg c60[1];
creg c61[1];
creg c62[1];
creg c63[1];
creg c64[1];
creg c65[1];
creg c66[1];
creg c67[1];
creg c68[1];
creg c69[4];
creg c70[1];
creg c71[4];
creg c72[1];
creg c73[4];
creg c74[1];
creg c75[1];
creg c76[1];
creg c77[1];
creg c78[1];
creg c79[1];
creg c80[1];
creg c81[1];
creg c82[1];
creg c83[1];
creg c84[4];
creg c85[1];
creg c86[4];
creg c87[1];
creg c88[4];
creg c89[1];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[17];
h q[19];
h q[20];
cx q[9],q[30];
cx q[5],q[22];
cx q[22],q[29];
cx q[12],q[23];
cx q[9],q[14];
cx q[5],q[16];
cx q[4],q[27];
cx q[3],q[24];
cx q[24],q[26];
cx q[19],q[25];
cx q[16],q[12];
cx q[10],q[27];
cx q[9],q[15];
cx q[8],q[23];
cx q[6],q[14];
cx q[3],q[21];
cx q[2],q[5];
cx q[1],q[4];
cx q[0],q[29];
cx q[26],q[16];
cx q[25],q[28];
cx q[24],q[14];
cx q[21],q[0];
cx q[20],q[9];
cx q[19],q[22];
cx q[17],q[2];
cx q[15],q[1];
cx q[11],q[3];
cx q[10],q[13];
cx q[8],q[18];
cx q[6],q[7];
cx q[20],q[18];
cx q[17],q[19];
cx q[14],q[16];
cx q[11],q[13];
cx q[29],q[6];
cx q[27],q[21];
cx q[23],q[30];
cx q[12],q[15];
cx q[9],q[8];
cx q[5],q[28];
cx q[4],q[26];
cx q[3],q[10];
cx q[2],q[25];
cx q[1],q[24];
cx q[0],q[7];
cx q[2],z_anc[0];
h a0[0];
cx a0[0],z_anc[0];
cx q[5],z_anc[0];
cx q[25],z_anc[0];
cx a0[0],z_anc[0];
h a0[0];
measure a0[0] -> c0[0];
cx q[28],z_anc[0];
measure z_anc[0] -> z_c[0];
cx q[10],z_anc[1];
h a1[0];
cx a1[0],z_anc[1];
cx q[13],z_anc[1];
cx q[21],z_anc[1];
cx a1[0],z_anc[1];
h a1[0];
measure a1[0] -> c1[0];
cx q[27],z_anc[1];
measure z_anc[1] -> z_c[1];
cx q[12],z_anc[2];
h a2[0];
cx a2[0],z_anc[2];
cx q[15],z_anc[2];
cx q[23],z_anc[2];
cx a2[0],z_anc[2];
h a2[0];
measure a2[0] -> c2[0];
cx q[30],z_anc[2];
measure z_anc[2] -> z_c[2];
cx q[1],z_anc[3];
h a3[0];
cx a3[0],z_anc[3];
cx q[4],z_anc[3];
cx q[24],z_anc[3];
cx a3[0],z_anc[3];
h a3[0];
measure a3[0] -> c3[0];
cx q[26],z_anc[3];
measure z_anc[3] -> z_c[3];
cx q[6],z_anc[4];
h a4[0];
cx a4[0],z_anc[4];
cx q[7],z_anc[4];
cx q[14],z_anc[4];
cx a4[0],z_anc[4];
h a4[0];
measure a4[0] -> c4[0];
cx q[16],z_anc[4];
measure z_anc[4] -> z_c[4];
cx q[8],z_anc[5];
h a5[0];
cx a5[0],z_anc[5];
cx q[9],z_anc[5];
cx q[18],z_anc[5];
cx a5[0],z_anc[5];
h a5[0];
measure a5[0] -> c5[0];
cx q[20],z_anc[5];
measure z_anc[5] -> z_c[5];
cx q[19],z_anc[6];
h a6[0];
cx a6[0],z_anc[6];
cx q[22],z_anc[6];
cx q[25],z_anc[6];
cx a6[0],z_anc[6];
h a6[0];
measure a6[0] -> c6[0];
cx q[28],z_anc[6];
measure z_anc[6] -> z_c[6];
cx q[3],z_anc[7];
h a7[0];
cx a7[0],z_anc[7];
cx q[10],z_anc[7];
cx q[11],z_anc[7];
cx a7[0],z_anc[7];
h a7[0];
measure a7[0] -> c7[0];
cx q[13],z_anc[7];
measure z_anc[7] -> z_c[7];
cx q[4],z_anc[8];
h a8[0];
cx a8[0],z_anc[8];
cx q[21],z_anc[8];
cx q[26],z_anc[8];
cx a8[0],z_anc[8];
h a8[0];
measure a8[0] -> c8[0];
cx q[27],z_anc[8];
measure z_anc[8] -> z_c[8];
cx q[5],z_anc[9];
h a9[0];
cx a9[0],z_anc[9];
cx q[6],z_anc[9];
h a9[1];
cx a9[1],z_anc[9];
cx q[12],z_anc[9];
h a9[2];
cx a9[2],z_anc[9];
cx q[15],z_anc[9];
h a9[3];
cx a9[3],z_anc[9];
cx a9[0],z_anc[9];
h a9[0];
measure a9[0] -> c9[0];
cx q[16],z_anc[9];
cx a9[2],z_anc[9];
h a9[2];
measure a9[2] -> c9[2];
cx q[22],z_anc[9];
cx q[28],z_anc[9];
cx a9[1],z_anc[9];
h a9[1];
measure a9[1] -> c9[1];
cx a9[3],z_anc[9];
h a9[3];
measure a9[3] -> c9[3];
cx q[29],z_anc[9];
measure z_anc[9] -> z_c[9];
cx q[8],z_anc[10];
h a10[0];
cx a10[0],z_anc[10];
cx q[18],z_anc[10];
cx q[23],z_anc[10];
cx a10[0],z_anc[10];
h a10[0];
measure a10[0] -> c10[0];
cx q[30],z_anc[10];
measure z_anc[10] -> z_c[10];
cx q[0],z_anc[11];
h a11[0];
cx a11[0],z_anc[11];
cx q[3],z_anc[11];
h a11[1];
cx a11[1],z_anc[11];
cx q[7],z_anc[11];
h a11[2];
cx a11[2],z_anc[11];
cx q[10],z_anc[11];
h a11[3];
cx a11[3],z_anc[11];
cx a11[0],z_anc[11];
h a11[0];
measure a11[0] -> c11[0];
cx q[14],z_anc[11];
cx a11[2],z_anc[11];
h a11[2];
measure a11[2] -> c11[2];
cx q[21],z_anc[11];
cx q[24],z_anc[11];
cx a11[1],z_anc[11];
h a11[1];
measure a11[1] -> c11[1];
cx a11[3],z_anc[11];
h a11[3];
measure a11[3] -> c11[3];
cx q[26],z_anc[11];
measure z_anc[11] -> z_c[11];
cx q[0],z_anc[12];
h a12[0];
cx a12[0],z_anc[12];
cx q[6],z_anc[12];
cx q[7],z_anc[12];
cx a12[0],z_anc[12];
h a12[0];
measure a12[0] -> c12[0];
cx q[29],z_anc[12];
measure z_anc[12] -> z_c[12];
cx q[1],z_anc[13];
h a13[0];
cx a13[0],z_anc[13];
cx q[8],z_anc[13];
h a13[1];
cx a13[1],z_anc[13];
cx q[9],z_anc[13];
h a13[2];
cx a13[2],z_anc[13];
cx q[14],z_anc[13];
h a13[3];
cx a13[3],z_anc[13];
cx a13[0],z_anc[13];
h a13[0];
measure a13[0] -> c13[0];
cx q[15],z_anc[13];
cx a13[2],z_anc[13];
h a13[2];
measure a13[2] -> c13[2];
cx q[16],z_anc[13];
cx q[24],z_anc[13];
cx a13[1],z_anc[13];
h a13[1];
measure a13[1] -> c13[1];
cx a13[3],z_anc[13];
h a13[3];
measure a13[3] -> c13[3];
cx q[30],z_anc[13];
measure z_anc[13] -> z_c[13];
cx q[2],z_anc[14];
h a14[0];
cx a14[0],z_anc[14];
cx q[17],z_anc[14];
cx q[19],z_anc[14];
cx a14[0],z_anc[14];
h a14[0];
measure a14[0] -> c14[0];
cx q[25],z_anc[14];
measure z_anc[14] -> z_c[14];
cx q[2],z_anc[15];
h a15[0];
cx a15[0],z_anc[15];
cx q[5],z_anc[15];
cx q[25],z_anc[15];
cx a15[0],z_anc[15];
h a15[0];
measure a15[0] -> c15[0];
cx q[28],z_anc[15];
measure z_anc[15] -> z_c[15];
cx q[10],z_anc[16];
h a16[0];
cx a16[0],z_anc[16];
cx q[13],z_anc[16];
cx q[21],z_anc[16];
cx a16[0],z_anc[16];
h a16[0];
measure a16[0] -> c16[0];
cx q[27],z_anc[16];
measure z_anc[16] -> z_c[16];
cx q[12],z_anc[17];
h a17[0];
cx a17[0],z_anc[17];
cx q[15],z_anc[17];
cx q[23],z_anc[17];
cx a17[0],z_anc[17];
h a17[0];
measure a17[0] -> c17[0];
cx q[30],z_anc[17];
measure z_anc[17] -> z_c[17];
cx q[1],z_anc[18];
h a18[0];
cx a18[0],z_anc[18];
cx q[4],z_anc[18];
cx q[24],z_anc[18];
cx a18[0],z_anc[18];
h a18[0];
measure a18[0] -> c18[0];
cx q[26],z_anc[18];
measure z_anc[18] -> z_c[18];
cx q[6],z_anc[19];
h a19[0];
cx a19[0],z_anc[19];
cx q[7],z_anc[19];
cx q[14],z_anc[19];
cx a19[0],z_anc[19];
h a19[0];
measure a19[0] -> c19[0];
cx q[16],z_anc[19];
measure z_anc[19] -> z_c[19];
cx q[8],z_anc[20];
h a20[0];
cx a20[0],z_anc[20];
cx q[9],z_anc[20];
cx q[18],z_anc[20];
cx a20[0],z_anc[20];
h a20[0];
measure a20[0] -> c20[0];
cx q[20],z_anc[20];
measure z_anc[20] -> z_c[20];
cx q[19],z_anc[21];
h a21[0];
cx a21[0],z_anc[21];
cx q[22],z_anc[21];
cx q[25],z_anc[21];
cx a21[0],z_anc[21];
h a21[0];
measure a21[0] -> c21[0];
cx q[28],z_anc[21];
measure z_anc[21] -> z_c[21];
cx q[3],z_anc[22];
h a22[0];
cx a22[0],z_anc[22];
cx q[10],z_anc[22];
cx q[11],z_anc[22];
cx a22[0],z_anc[22];
h a22[0];
measure a22[0] -> c22[0];
cx q[13],z_anc[22];
measure z_anc[22] -> z_c[22];
cx q[4],z_anc[23];
h a23[0];
cx a23[0],z_anc[23];
cx q[21],z_anc[23];
cx q[26],z_anc[23];
cx a23[0],z_anc[23];
h a23[0];
measure a23[0] -> c23[0];
cx q[27],z_anc[23];
measure z_anc[23] -> z_c[23];
cx q[5],z_anc[24];
h a24[0];
cx a24[0],z_anc[24];
cx q[6],z_anc[24];
h a24[1];
cx a24[1],z_anc[24];
cx q[12],z_anc[24];
h a24[2];
cx a24[2],z_anc[24];
cx q[15],z_anc[24];
h a24[3];
cx a24[3],z_anc[24];
cx a24[0],z_anc[24];
h a24[0];
measure a24[0] -> c24[0];
cx q[16],z_anc[24];
cx a24[2],z_anc[24];
h a24[2];
measure a24[2] -> c24[2];
cx q[22],z_anc[24];
cx q[28],z_anc[24];
cx a24[1],z_anc[24];
h a24[1];
measure a24[1] -> c24[1];
cx a24[3],z_anc[24];
h a24[3];
measure a24[3] -> c24[3];
cx q[29],z_anc[24];
measure z_anc[24] -> z_c[24];
cx q[8],z_anc[25];
h a25[0];
cx a25[0],z_anc[25];
cx q[18],z_anc[25];
cx q[23],z_anc[25];
cx a25[0],z_anc[25];
h a25[0];
measure a25[0] -> c25[0];
cx q[30],z_anc[25];
measure z_anc[25] -> z_c[25];
cx q[0],z_anc[26];
h a26[0];
cx a26[0],z_anc[26];
cx q[3],z_anc[26];
h a26[1];
cx a26[1],z_anc[26];
cx q[7],z_anc[26];
h a26[2];
cx a26[2],z_anc[26];
cx q[10],z_anc[26];
h a26[3];
cx a26[3],z_anc[26];
cx a26[0],z_anc[26];
h a26[0];
measure a26[0] -> c26[0];
cx q[14],z_anc[26];
cx a26[2],z_anc[26];
h a26[2];
measure a26[2] -> c26[2];
cx q[21],z_anc[26];
cx q[24],z_anc[26];
cx a26[1],z_anc[26];
h a26[1];
measure a26[1] -> c26[1];
cx a26[3],z_anc[26];
h a26[3];
measure a26[3] -> c26[3];
cx q[26],z_anc[26];
measure z_anc[26] -> z_c[26];
cx q[0],z_anc[27];
h a27[0];
cx a27[0],z_anc[27];
cx q[6],z_anc[27];
cx q[7],z_anc[27];
cx a27[0],z_anc[27];
h a27[0];
measure a27[0] -> c27[0];
cx q[29],z_anc[27];
measure z_anc[27] -> z_c[27];
cx q[1],z_anc[28];
h a28[0];
cx a28[0],z_anc[28];
cx q[8],z_anc[28];
h a28[1];
cx a28[1],z_anc[28];
cx q[9],z_anc[28];
h a28[2];
cx a28[2],z_anc[28];
cx q[14],z_anc[28];
h a28[3];
cx a28[3],z_anc[28];
cx a28[0],z_anc[28];
h a28[0];
measure a28[0] -> c28[0];
cx q[15],z_anc[28];
cx a28[2],z_anc[28];
h a28[2];
measure a28[2] -> c28[2];
cx q[16],z_anc[28];
cx q[24],z_anc[28];
cx a28[1],z_anc[28];
h a28[1];
measure a28[1] -> c28[1];
cx a28[3],z_anc[28];
h a28[3];
measure a28[3] -> c28[3];
cx q[30],z_anc[28];
measure z_anc[28] -> z_c[28];
cx q[2],z_anc[29];
h a29[0];
cx a29[0],z_anc[29];
cx q[17],z_anc[29];
cx q[19],z_anc[29];
cx a29[0],z_anc[29];
h a29[0];
measure a29[0] -> c29[0];
cx q[25],z_anc[29];
measure z_anc[29] -> z_c[29];
cx q[2],z_anc[30];
h a30[0];
cx a30[0],z_anc[30];
cx q[5],z_anc[30];
cx q[25],z_anc[30];
cx a30[0],z_anc[30];
h a30[0];
measure a30[0] -> c30[0];
cx q[28],z_anc[30];
measure z_anc[30] -> z_c[30];
cx q[10],z_anc[31];
h a31[0];
cx a31[0],z_anc[31];
cx q[13],z_anc[31];
cx q[21],z_anc[31];
cx a31[0],z_anc[31];
h a31[0];
measure a31[0] -> c31[0];
cx q[27],z_anc[31];
measure z_anc[31] -> z_c[31];
cx q[12],z_anc[32];
h a32[0];
cx a32[0],z_anc[32];
cx q[15],z_anc[32];
cx q[23],z_anc[32];
cx a32[0],z_anc[32];
h a32[0];
measure a32[0] -> c32[0];
cx q[30],z_anc[32];
measure z_anc[32] -> z_c[32];
cx q[1],z_anc[33];
h a33[0];
cx a33[0],z_anc[33];
cx q[4],z_anc[33];
cx q[24],z_anc[33];
cx a33[0],z_anc[33];
h a33[0];
measure a33[0] -> c33[0];
cx q[26],z_anc[33];
measure z_anc[33] -> z_c[33];
cx q[6],z_anc[34];
h a34[0];
cx a34[0],z_anc[34];
cx q[7],z_anc[34];
cx q[14],z_anc[34];
cx a34[0],z_anc[34];
h a34[0];
measure a34[0] -> c34[0];
cx q[16],z_anc[34];
measure z_anc[34] -> z_c[34];
cx q[8],z_anc[35];
h a35[0];
cx a35[0],z_anc[35];
cx q[9],z_anc[35];
cx q[18],z_anc[35];
cx a35[0],z_anc[35];
h a35[0];
measure a35[0] -> c35[0];
cx q[20],z_anc[35];
measure z_anc[35] -> z_c[35];
cx q[19],z_anc[36];
h a36[0];
cx a36[0],z_anc[36];
cx q[22],z_anc[36];
cx q[25],z_anc[36];
cx a36[0],z_anc[36];
h a36[0];
measure a36[0] -> c36[0];
cx q[28],z_anc[36];
measure z_anc[36] -> z_c[36];
cx q[3],z_anc[37];
h a37[0];
cx a37[0],z_anc[37];
cx q[10],z_anc[37];
cx q[11],z_anc[37];
cx a37[0],z_anc[37];
h a37[0];
measure a37[0] -> c37[0];
cx q[13],z_anc[37];
measure z_anc[37] -> z_c[37];
cx q[4],z_anc[38];
h a38[0];
cx a38[0],z_anc[38];
cx q[21],z_anc[38];
cx q[26],z_anc[38];
cx a38[0],z_anc[38];
h a38[0];
measure a38[0] -> c38[0];
cx q[27],z_anc[38];
measure z_anc[38] -> z_c[38];
cx q[5],z_anc[39];
h a39[0];
cx a39[0],z_anc[39];
cx q[6],z_anc[39];
h a39[1];
cx a39[1],z_anc[39];
cx q[12],z_anc[39];
h a39[2];
cx a39[2],z_anc[39];
cx q[15],z_anc[39];
h a39[3];
cx a39[3],z_anc[39];
cx a39[0],z_anc[39];
h a39[0];
measure a39[0] -> c39[0];
cx q[16],z_anc[39];
cx a39[2],z_anc[39];
h a39[2];
measure a39[2] -> c39[2];
cx q[22],z_anc[39];
cx q[28],z_anc[39];
cx a39[1],z_anc[39];
h a39[1];
measure a39[1] -> c39[1];
cx a39[3],z_anc[39];
h a39[3];
measure a39[3] -> c39[3];
cx q[29],z_anc[39];
measure z_anc[39] -> z_c[39];
cx q[8],z_anc[40];
h a40[0];
cx a40[0],z_anc[40];
cx q[18],z_anc[40];
cx q[23],z_anc[40];
cx a40[0],z_anc[40];
h a40[0];
measure a40[0] -> c40[0];
cx q[30],z_anc[40];
measure z_anc[40] -> z_c[40];
cx q[0],z_anc[41];
h a41[0];
cx a41[0],z_anc[41];
cx q[3],z_anc[41];
h a41[1];
cx a41[1],z_anc[41];
cx q[7],z_anc[41];
h a41[2];
cx a41[2],z_anc[41];
cx q[10],z_anc[41];
h a41[3];
cx a41[3],z_anc[41];
cx a41[0],z_anc[41];
h a41[0];
measure a41[0] -> c41[0];
cx q[14],z_anc[41];
cx a41[2],z_anc[41];
h a41[2];
measure a41[2] -> c41[2];
cx q[21],z_anc[41];
cx q[24],z_anc[41];
cx a41[1],z_anc[41];
h a41[1];
measure a41[1] -> c41[1];
cx a41[3],z_anc[41];
h a41[3];
measure a41[3] -> c41[3];
cx q[26],z_anc[41];
measure z_anc[41] -> z_c[41];
cx q[0],z_anc[42];
h a42[0];
cx a42[0],z_anc[42];
cx q[6],z_anc[42];
cx q[7],z_anc[42];
cx a42[0],z_anc[42];
h a42[0];
measure a42[0] -> c42[0];
cx q[29],z_anc[42];
measure z_anc[42] -> z_c[42];
cx q[1],z_anc[43];
h a43[0];
cx a43[0],z_anc[43];
cx q[8],z_anc[43];
h a43[1];
cx a43[1],z_anc[43];
cx q[9],z_anc[43];
h a43[2];
cx a43[2],z_anc[43];
cx q[14],z_anc[43];
h a43[3];
cx a43[3],z_anc[43];
cx a43[0],z_anc[43];
h a43[0];
measure a43[0] -> c43[0];
cx q[15],z_anc[43];
cx a43[2],z_anc[43];
h a43[2];
measure a43[2] -> c43[2];
cx q[16],z_anc[43];
cx q[24],z_anc[43];
cx a43[1],z_anc[43];
h a43[1];
measure a43[1] -> c43[1];
cx a43[3],z_anc[43];
h a43[3];
measure a43[3] -> c43[3];
cx q[30],z_anc[43];
measure z_anc[43] -> z_c[43];
cx q[2],z_anc[44];
h a44[0];
cx a44[0],z_anc[44];
cx q[17],z_anc[44];
cx q[19],z_anc[44];
cx a44[0],z_anc[44];
h a44[0];
measure a44[0] -> c44[0];
cx q[25],z_anc[44];
measure z_anc[44] -> z_c[44];
measure z_anc[0] -> z_c[0];
measure z_anc[1] -> z_c[1];
measure z_anc[2] -> z_c[2];
measure z_anc[3] -> z_c[3];
measure z_anc[4] -> z_c[4];
measure z_anc[5] -> z_c[5];
measure z_anc[6] -> z_c[6];
measure z_anc[7] -> z_c[7];
measure z_anc[8] -> z_c[8];
measure z_anc[9] -> z_c[9];
measure z_anc[10] -> z_c[10];
measure z_anc[11] -> z_c[11];
measure z_anc[12] -> z_c[12];
measure z_anc[13] -> z_c[13];
measure z_anc[14] -> z_c[14];
measure z_anc[15] -> z_c[15];
measure z_anc[16] -> z_c[16];
measure z_anc[17] -> z_c[17];
measure z_anc[18] -> z_c[18];
measure z_anc[19] -> z_c[19];
measure z_anc[20] -> z_c[20];
measure z_anc[21] -> z_c[21];
measure z_anc[22] -> z_c[22];
measure z_anc[23] -> z_c[23];
measure z_anc[24] -> z_c[24];
measure z_anc[25] -> z_c[25];
measure z_anc[26] -> z_c[26];
measure z_anc[27] -> z_c[27];
measure z_anc[28] -> z_c[28];
measure z_anc[29] -> z_c[29];
measure z_anc[30] -> z_c[30];
measure z_anc[31] -> z_c[31];
measure z_anc[32] -> z_c[32];
measure z_anc[33] -> z_c[33];
measure z_anc[34] -> z_c[34];
measure z_anc[35] -> z_c[35];
measure z_anc[36] -> z_c[36];
measure z_anc[37] -> z_c[37];
measure z_anc[38] -> z_c[38];
measure z_anc[39] -> z_c[39];
measure z_anc[40] -> z_c[40];
measure z_anc[41] -> z_c[41];
measure z_anc[42] -> z_c[42];
measure z_anc[43] -> z_c[43];
measure z_anc[44] -> z_c[44];
h x_anc[0];
cx x_anc[0],q[2];
cx x_anc[0],a45[0];
cx x_anc[0],q[5];
cx x_anc[0],q[25];
cx x_anc[0],a45[0];
measure a45[0] -> c45[0];
cx x_anc[0],q[28];
h x_anc[0];
measure x_anc[0] -> x_c[0];
h x_anc[1];
cx x_anc[1],q[10];
cx x_anc[1],a46[0];
cx x_anc[1],q[13];
cx x_anc[1],q[21];
cx x_anc[1],a46[0];
measure a46[0] -> c46[0];
cx x_anc[1],q[27];
h x_anc[1];
measure x_anc[1] -> x_c[1];
h x_anc[2];
cx x_anc[2],q[12];
cx x_anc[2],a47[0];
cx x_anc[2],q[15];
cx x_anc[2],q[23];
cx x_anc[2],a47[0];
measure a47[0] -> c47[0];
cx x_anc[2],q[30];
h x_anc[2];
measure x_anc[2] -> x_c[2];
h x_anc[3];
cx x_anc[3],q[1];
cx x_anc[3],a48[0];
cx x_anc[3],q[4];
cx x_anc[3],q[24];
cx x_anc[3],a48[0];
measure a48[0] -> c48[0];
cx x_anc[3],q[26];
h x_anc[3];
measure x_anc[3] -> x_c[3];
h x_anc[4];
cx x_anc[4],q[6];
cx x_anc[4],a49[0];
cx x_anc[4],q[7];
cx x_anc[4],q[14];
cx x_anc[4],a49[0];
measure a49[0] -> c49[0];
cx x_anc[4],q[16];
h x_anc[4];
measure x_anc[4] -> x_c[4];
h x_anc[5];
cx x_anc[5],q[8];
cx x_anc[5],a50[0];
cx x_anc[5],q[9];
cx x_anc[5],q[18];
cx x_anc[5],a50[0];
measure a50[0] -> c50[0];
cx x_anc[5],q[20];
h x_anc[5];
measure x_anc[5] -> x_c[5];
h x_anc[6];
cx x_anc[6],q[19];
cx x_anc[6],a51[0];
cx x_anc[6],q[22];
cx x_anc[6],q[25];
cx x_anc[6],a51[0];
measure a51[0] -> c51[0];
cx x_anc[6],q[28];
h x_anc[6];
measure x_anc[6] -> x_c[6];
h x_anc[7];
cx x_anc[7],q[3];
cx x_anc[7],a52[0];
cx x_anc[7],q[10];
cx x_anc[7],q[11];
cx x_anc[7],a52[0];
measure a52[0] -> c52[0];
cx x_anc[7],q[13];
h x_anc[7];
measure x_anc[7] -> x_c[7];
h x_anc[8];
cx x_anc[8],q[4];
cx x_anc[8],a53[0];
cx x_anc[8],q[21];
cx x_anc[8],q[26];
cx x_anc[8],a53[0];
measure a53[0] -> c53[0];
cx x_anc[8],q[27];
h x_anc[8];
measure x_anc[8] -> x_c[8];
h x_anc[9];
cx x_anc[9],q[5];
cx x_anc[9],a54[0];
cx x_anc[9],q[6];
cx x_anc[9],a54[1];
cx x_anc[9],q[12];
cx x_anc[9],a54[2];
cx x_anc[9],q[15];
cx x_anc[9],a54[3];
cx x_anc[9],a54[0];
measure a54[0] -> c54[0];
cx x_anc[9],q[16];
cx x_anc[9],a54[2];
measure a54[2] -> c54[2];
cx x_anc[9],q[22];
cx x_anc[9],q[28];
cx x_anc[9],a54[1];
measure a54[1] -> c54[1];
cx x_anc[9],a54[3];
measure a54[3] -> c54[3];
cx x_anc[9],q[29];
h x_anc[9];
measure x_anc[9] -> x_c[9];
h x_anc[10];
cx x_anc[10],q[8];
cx x_anc[10],a55[0];
cx x_anc[10],q[18];
cx x_anc[10],q[23];
cx x_anc[10],a55[0];
measure a55[0] -> c55[0];
cx x_anc[10],q[30];
h x_anc[10];
measure x_anc[10] -> x_c[10];
h x_anc[11];
cx x_anc[11],q[0];
cx x_anc[11],a56[0];
cx x_anc[11],q[3];
cx x_anc[11],a56[1];
cx x_anc[11],q[7];
cx x_anc[11],a56[2];
cx x_anc[11],q[10];
cx x_anc[11],a56[3];
cx x_anc[11],a56[0];
measure a56[0] -> c56[0];
cx x_anc[11],q[14];
cx x_anc[11],a56[2];
measure a56[2] -> c56[2];
cx x_anc[11],q[21];
cx x_anc[11],q[24];
cx x_anc[11],a56[1];
measure a56[1] -> c56[1];
cx x_anc[11],a56[3];
measure a56[3] -> c56[3];
cx x_anc[11],q[26];
h x_anc[11];
measure x_anc[11] -> x_c[11];
h x_anc[12];
cx x_anc[12],q[0];
cx x_anc[12],a57[0];
cx x_anc[12],q[6];
cx x_anc[12],q[7];
cx x_anc[12],a57[0];
measure a57[0] -> c57[0];
cx x_anc[12],q[29];
h x_anc[12];
measure x_anc[12] -> x_c[12];
h x_anc[13];
cx x_anc[13],q[1];
cx x_anc[13],a58[0];
cx x_anc[13],q[8];
cx x_anc[13],a58[1];
cx x_anc[13],q[9];
cx x_anc[13],a58[2];
cx x_anc[13],q[14];
cx x_anc[13],a58[3];
cx x_anc[13],a58[0];
measure a58[0] -> c58[0];
cx x_anc[13],q[15];
cx x_anc[13],a58[2];
measure a58[2] -> c58[2];
cx x_anc[13],q[16];
cx x_anc[13],q[24];
cx x_anc[13],a58[1];
measure a58[1] -> c58[1];
cx x_anc[13],a58[3];
measure a58[3] -> c58[3];
cx x_anc[13],q[30];
h x_anc[13];
measure x_anc[13] -> x_c[13];
h x_anc[14];
cx x_anc[14],q[2];
cx x_anc[14],a59[0];
cx x_anc[14],q[17];
cx x_anc[14],q[19];
cx x_anc[14],a59[0];
measure a59[0] -> c59[0];
cx x_anc[14],q[25];
h x_anc[14];
measure x_anc[14] -> x_c[14];
h x_anc[15];
cx x_anc[15],q[2];
cx x_anc[15],a60[0];
cx x_anc[15],q[5];
cx x_anc[15],q[25];
cx x_anc[15],a60[0];
measure a60[0] -> c60[0];
cx x_anc[15],q[28];
h x_anc[15];
measure x_anc[15] -> x_c[15];
h x_anc[16];
cx x_anc[16],q[10];
cx x_anc[16],a61[0];
cx x_anc[16],q[13];
cx x_anc[16],q[21];
cx x_anc[16],a61[0];
measure a61[0] -> c61[0];
cx x_anc[16],q[27];
h x_anc[16];
measure x_anc[16] -> x_c[16];
h x_anc[17];
cx x_anc[17],q[12];
cx x_anc[17],a62[0];
cx x_anc[17],q[15];
cx x_anc[17],q[23];
cx x_anc[17],a62[0];
measure a62[0] -> c62[0];
cx x_anc[17],q[30];
h x_anc[17];
measure x_anc[17] -> x_c[17];
h x_anc[18];
cx x_anc[18],q[1];
cx x_anc[18],a63[0];
cx x_anc[18],q[4];
cx x_anc[18],q[24];
cx x_anc[18],a63[0];
measure a63[0] -> c63[0];
cx x_anc[18],q[26];
h x_anc[18];
measure x_anc[18] -> x_c[18];
h x_anc[19];
cx x_anc[19],q[6];
cx x_anc[19],a64[0];
cx x_anc[19],q[7];
cx x_anc[19],q[14];
cx x_anc[19],a64[0];
measure a64[0] -> c64[0];
cx x_anc[19],q[16];
h x_anc[19];
measure x_anc[19] -> x_c[19];
h x_anc[20];
cx x_anc[20],q[8];
cx x_anc[20],a65[0];
cx x_anc[20],q[9];
cx x_anc[20],q[18];
cx x_anc[20],a65[0];
measure a65[0] -> c65[0];
cx x_anc[20],q[20];
h x_anc[20];
measure x_anc[20] -> x_c[20];
h x_anc[21];
cx x_anc[21],q[19];
cx x_anc[21],a66[0];
cx x_anc[21],q[22];
cx x_anc[21],q[25];
cx x_anc[21],a66[0];
measure a66[0] -> c66[0];
cx x_anc[21],q[28];
h x_anc[21];
measure x_anc[21] -> x_c[21];
h x_anc[22];
cx x_anc[22],q[3];
cx x_anc[22],a67[0];
cx x_anc[22],q[10];
cx x_anc[22],q[11];
cx x_anc[22],a67[0];
measure a67[0] -> c67[0];
cx x_anc[22],q[13];
h x_anc[22];
measure x_anc[22] -> x_c[22];
h x_anc[23];
cx x_anc[23],q[4];
cx x_anc[23],a68[0];
cx x_anc[23],q[21];
cx x_anc[23],q[26];
cx x_anc[23],a68[0];
measure a68[0] -> c68[0];
cx x_anc[23],q[27];
h x_anc[23];
measure x_anc[23] -> x_c[23];
h x_anc[24];
cx x_anc[24],q[5];
cx x_anc[24],a69[0];
cx x_anc[24],q[6];
cx x_anc[24],a69[1];
cx x_anc[24],q[12];
cx x_anc[24],a69[2];
cx x_anc[24],q[15];
cx x_anc[24],a69[3];
cx x_anc[24],a69[0];
measure a69[0] -> c69[0];
cx x_anc[24],q[16];
cx x_anc[24],a69[2];
measure a69[2] -> c69[2];
cx x_anc[24],q[22];
cx x_anc[24],q[28];
cx x_anc[24],a69[1];
measure a69[1] -> c69[1];
cx x_anc[24],a69[3];
measure a69[3] -> c69[3];
cx x_anc[24],q[29];
h x_anc[24];
measure x_anc[24] -> x_c[24];
h x_anc[25];
cx x_anc[25],q[8];
cx x_anc[25],a70[0];
cx x_anc[25],q[18];
cx x_anc[25],q[23];
cx x_anc[25],a70[0];
measure a70[0] -> c70[0];
cx x_anc[25],q[30];
h x_anc[25];
measure x_anc[25] -> x_c[25];
h x_anc[26];
cx x_anc[26],q[0];
cx x_anc[26],a71[0];
cx x_anc[26],q[3];
cx x_anc[26],a71[1];
cx x_anc[26],q[7];
cx x_anc[26],a71[2];
cx x_anc[26],q[10];
cx x_anc[26],a71[3];
cx x_anc[26],a71[0];
measure a71[0] -> c71[0];
cx x_anc[26],q[14];
cx x_anc[26],a71[2];
measure a71[2] -> c71[2];
cx x_anc[26],q[21];
cx x_anc[26],q[24];
cx x_anc[26],a71[1];
measure a71[1] -> c71[1];
cx x_anc[26],a71[3];
measure a71[3] -> c71[3];
cx x_anc[26],q[26];
h x_anc[26];
measure x_anc[26] -> x_c[26];
h x_anc[27];
cx x_anc[27],q[0];
cx x_anc[27],a72[0];
cx x_anc[27],q[6];
cx x_anc[27],q[7];
cx x_anc[27],a72[0];
measure a72[0] -> c72[0];
cx x_anc[27],q[29];
h x_anc[27];
measure x_anc[27] -> x_c[27];
h x_anc[28];
cx x_anc[28],q[1];
cx x_anc[28],a73[0];
cx x_anc[28],q[8];
cx x_anc[28],a73[1];
cx x_anc[28],q[9];
cx x_anc[28],a73[2];
cx x_anc[28],q[14];
cx x_anc[28],a73[3];
cx x_anc[28],a73[0];
measure a73[0] -> c73[0];
cx x_anc[28],q[15];
cx x_anc[28],a73[2];
measure a73[2] -> c73[2];
cx x_anc[28],q[16];
cx x_anc[28],q[24];
cx x_anc[28],a73[1];
measure a73[1] -> c73[1];
cx x_anc[28],a73[3];
measure a73[3] -> c73[3];
cx x_anc[28],q[30];
h x_anc[28];
measure x_anc[28] -> x_c[28];
h x_anc[29];
cx x_anc[29],q[2];
cx x_anc[29],a74[0];
cx x_anc[29],q[17];
cx x_anc[29],q[19];
cx x_anc[29],a74[0];
measure a74[0] -> c74[0];
cx x_anc[29],q[25];
h x_anc[29];
measure x_anc[29] -> x_c[29];
h x_anc[30];
cx x_anc[30],q[2];
cx x_anc[30],a75[0];
cx x_anc[30],q[5];
cx x_anc[30],q[25];
cx x_anc[30],a75[0];
measure a75[0] -> c75[0];
cx x_anc[30],q[28];
h x_anc[30];
measure x_anc[30] -> x_c[30];
h x_anc[31];
cx x_anc[31],q[10];
cx x_anc[31],a76[0];
cx x_anc[31],q[13];
cx x_anc[31],q[21];
cx x_anc[31],a76[0];
measure a76[0] -> c76[0];
cx x_anc[31],q[27];
h x_anc[31];
measure x_anc[31] -> x_c[31];
h x_anc[32];
cx x_anc[32],q[12];
cx x_anc[32],a77[0];
cx x_anc[32],q[15];
cx x_anc[32],q[23];
cx x_anc[32],a77[0];
measure a77[0] -> c77[0];
cx x_anc[32],q[30];
h x_anc[32];
measure x_anc[32] -> x_c[32];
h x_anc[33];
cx x_anc[33],q[1];
cx x_anc[33],a78[0];
cx x_anc[33],q[4];
cx x_anc[33],q[24];
cx x_anc[33],a78[0];
measure a78[0] -> c78[0];
cx x_anc[33],q[26];
h x_anc[33];
measure x_anc[33] -> x_c[33];
h x_anc[34];
cx x_anc[34],q[6];
cx x_anc[34],a79[0];
cx x_anc[34],q[7];
cx x_anc[34],q[14];
cx x_anc[34],a79[0];
measure a79[0] -> c79[0];
cx x_anc[34],q[16];
h x_anc[34];
measure x_anc[34] -> x_c[34];
h x_anc[35];
cx x_anc[35],q[8];
cx x_anc[35],a80[0];
cx x_anc[35],q[9];
cx x_anc[35],q[18];
cx x_anc[35],a80[0];
measure a80[0] -> c80[0];
cx x_anc[35],q[20];
h x_anc[35];
measure x_anc[35] -> x_c[35];
h x_anc[36];
cx x_anc[36],q[19];
cx x_anc[36],a81[0];
cx x_anc[36],q[22];
cx x_anc[36],q[25];
cx x_anc[36],a81[0];
measure a81[0] -> c81[0];
cx x_anc[36],q[28];
h x_anc[36];
measure x_anc[36] -> x_c[36];
h x_anc[37];
cx x_anc[37],q[3];
cx x_anc[37],a82[0];
cx x_anc[37],q[10];
cx x_anc[37],q[11];
cx x_anc[37],a82[0];
measure a82[0] -> c82[0];
cx x_anc[37],q[13];
h x_anc[37];
measure x_anc[37] -> x_c[37];
h x_anc[38];
cx x_anc[38],q[4];
cx x_anc[38],a83[0];
cx x_anc[38],q[21];
cx x_anc[38],q[26];
cx x_anc[38],a83[0];
measure a83[0] -> c83[0];
cx x_anc[38],q[27];
h x_anc[38];
measure x_anc[38] -> x_c[38];
h x_anc[39];
cx x_anc[39],q[5];
cx x_anc[39],a84[0];
cx x_anc[39],q[6];
cx x_anc[39],a84[1];
cx x_anc[39],q[12];
cx x_anc[39],a84[2];
cx x_anc[39],q[15];
cx x_anc[39],a84[3];
cx x_anc[39],a84[0];
measure a84[0] -> c84[0];
cx x_anc[39],q[16];
cx x_anc[39],a84[2];
measure a84[2] -> c84[2];
cx x_anc[39],q[22];
cx x_anc[39],q[28];
cx x_anc[39],a84[1];
measure a84[1] -> c84[1];
cx x_anc[39],a84[3];
measure a84[3] -> c84[3];
cx x_anc[39],q[29];
h x_anc[39];
measure x_anc[39] -> x_c[39];
h x_anc[40];
cx x_anc[40],q[8];
cx x_anc[40],a85[0];
cx x_anc[40],q[18];
cx x_anc[40],q[23];
cx x_anc[40],a85[0];
measure a85[0] -> c85[0];
cx x_anc[40],q[30];
h x_anc[40];
measure x_anc[40] -> x_c[40];
h x_anc[41];
cx x_anc[41],q[0];
cx x_anc[41],a86[0];
cx x_anc[41],q[3];
cx x_anc[41],a86[1];
cx x_anc[41],q[7];
cx x_anc[41],a86[2];
cx x_anc[41],q[10];
cx x_anc[41],a86[3];
cx x_anc[41],a86[0];
measure a86[0] -> c86[0];
cx x_anc[41],q[14];
cx x_anc[41],a86[2];
measure a86[2] -> c86[2];
cx x_anc[41],q[21];
cx x_anc[41],q[24];
cx x_anc[41],a86[1];
measure a86[1] -> c86[1];
cx x_anc[41],a86[3];
measure a86[3] -> c86[3];
cx x_anc[41],q[26];
h x_anc[41];
measure x_anc[41] -> x_c[41];
h x_anc[42];
cx x_anc[42],q[0];
cx x_anc[42],a87[0];
cx x_anc[42],q[6];
cx x_anc[42],q[7];
cx x_anc[42],a87[0];
measure a87[0] -> c87[0];
cx x_anc[42],q[29];
h x_anc[42];
measure x_anc[42] -> x_c[42];
h x_anc[43];
cx x_anc[43],q[1];
cx x_anc[43],a88[0];
cx x_anc[43],q[8];
cx x_anc[43],a88[1];
cx x_anc[43],q[9];
cx x_anc[43],a88[2];
cx x_anc[43],q[14];
cx x_anc[43],a88[3];
cx x_anc[43],a88[0];
measure a88[0] -> c88[0];
cx x_anc[43],q[15];
cx x_anc[43],a88[2];
measure a88[2] -> c88[2];
cx x_anc[43],q[16];
cx x_anc[43],q[24];
cx x_anc[43],a88[1];
measure a88[1] -> c88[1];
cx x_anc[43],a88[3];
measure a88[3] -> c88[3];
cx x_anc[43],q[30];
h x_anc[43];
measure x_anc[43] -> x_c[43];
h x_anc[44];
cx x_anc[44],q[2];
cx x_anc[44],a89[0];
cx x_anc[44],q[17];
cx x_anc[44],q[19];
cx x_anc[44],a89[0];
measure a89[0] -> c89[0];
cx x_anc[44],q[25];
h x_anc[44];
measure x_anc[44] -> x_c[44];
