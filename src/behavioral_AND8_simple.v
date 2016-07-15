`define param 8'b10101011
module behavioral_AND8(
	input [7:0] reg_add_test,
	output[7:0] reg_value
);
//  reg [7:0] data_reg = 8'b10101011;
  assign reg_value = param + reg_add_test;
endmodule



	   
