module s27 (
G1,
G2,
clk_net,
reset_net,
G3,
G0,
G17);

//Start PIs
input G0;
input G1;
input G2;
input G3;
input clk_net,reset_net;

//Start POs
output G17;

wire n1,n2,n3,n4,n5,n6,n7,n8,n9;
DFFR_X2 F1 (.D(G0), .CK(clk_net), .Q(n1));
INV_X1 U3 (.A(n1), .ZN(n2));
INV_X1 U4 (.A(n2), .ZN(n3));
NAND2_X2 U6 (.ZN(n4), .A1(n1), .A2(n3));
NAND2_X2 U5 (.ZN(n5), .A1(n3), .A2(n2));
NOR2_X1 U7 (.ZN(n6), .A1(n4), .A2(n5));
DFFR_X2 F2 (.D(n6), .CK(clk_net), .Q(G17));

endmodule


