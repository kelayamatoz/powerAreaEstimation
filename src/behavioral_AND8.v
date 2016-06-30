/* *****************************************************************************
 * File name: AND8.v
 * Made by: your name here
 * 
 * Description: This file contains the answer to hw3 of class ee271, 2009.
 * ****************************************************************************/


// Put your code here...
// module behavioral_AND8
//  (input [7:0] In,
//    output Out);
//   assign  Out = &In;
   
// endmodule

module behavioral_AND8(
    input [3:0] io_a,
    input [3:0] io_b,
    input [1:0] io_opcode,
    output[3:0] io_out
);

  wire[3:0] T0;
  wire[3:0] T1;
  wire[3:0] T2;
  wire[3:0] T3;
  wire[3:0] T4;
  wire T5;
  wire[3:0] T6;
  wire T7;
  wire T8;
  wire T9;
  wire T10;
  wire T11;
  wire T12;
  wire T13;
  wire T14;
  wire T15;

  assign io_out = T0;
  assign T0 = T14 ? io_b : T1;
  assign T1 = T10 ? io_a : T2;
  assign T2 = T7 ? T6 : T3;
  assign T3 = T5 ? T4 : 4'h0;
  assign T4 = io_a + io_b;
  assign T5 = io_opcode == 2'h0;
  assign T6 = io_a - io_b;
  assign T7 = T9 & T8;
  assign T8 = io_opcode == 2'h1;
  assign T9 = T5 ^ 1'h1;
  assign T10 = T12 & T11;
  assign T11 = io_opcode == 2'h2;
  assign T12 = T13 ^ 1'h1;
  assign T13 = T5 | T8;
  assign T14 = T15 ^ 1'h1;
  assign T15 = T13 | T11;
endmodule



	   