/* *****************************************************************************
 * File name: ee271_primitives.v
 * Made by: Ofer Shacham
 * 
 * Description: This file contains primitive circuit ellements for
 * ee271 homework assignment 3.
 * ****************************************************************************/


`define PINV_DELAY 1


module INV 
  (
    input In,
    output Out
   );

   logic   internal;
   assign  internal =  ~In;

   assign  #(`PINV_DELAY) Out = internal;
endmodule


module NAND2 
  (
    input In1, In2,
    output Out
   );

   logic   internal;
   assign  internal =  ~(In1 & In2);

   assign  #(2*`PINV_DELAY) Out = internal;
endmodule
