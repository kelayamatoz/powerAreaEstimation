module behavioral_AND8_tb;
	reg[3:0] io_a;
	reg[3:0] io_b;
	reg[1:0] io_opcode;
	reg[7:0] reg_add_test;
	wire[3:0] io_out;
	wire[7:0] reg_value;


	behavioral_AND8 ba8(
 		.io_a(io_a),
		.io_b(io_b),
		.io_opcode(io_opcode),
		.reg_add_test(reg_add_test),
		.io_out(io_out),
		.reg_value(reg_value)
	);

	initial begin
		io_a = 4'h0;
		io_b = 4'h1;
 		io_opcode = 2'h0;
		reg_add_test = 7'h1;
	end

	initial begin
		$monitor("io_a = %d, io_b = %d, io_opcode = %d, io_out = %d, reg_value = %d", io_a, io_b, io_opcode, io_out, reg_value);
	end

	
endmodule
