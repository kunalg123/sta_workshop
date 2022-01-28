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
wire rst_sync;
// Reset Synchronizer
DFFR_X2 SYNC1 (.D(1'b1), .CK(clk_net), .RN(rst), .Q(n1));
DFFR_X2 SYNC2 (.D(n1), .CK(clk_net), .RN(rst), .Q(rst_sync));

// Functional Register
DFFR_X2 R1 (.D(G0), .CK(clk_net), .RN(rst_sync), .Q(G17));

endmodule


