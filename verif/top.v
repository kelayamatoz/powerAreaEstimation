/* *****************************************************************************
 * File name: top.v
 * Made by: Ofer Shacham
 * 
 * Description: This file contains testing code for the ee271 hw assignment 3.
 * ****************************************************************************/
`define RANDOM_SEED 12345   // Change to change test pattern


`timescale 10ps/1ps

module top();
   // Parameters
   parameter CLK_PER = 1000;
   parameter NUM_ITERS = 10000;

   // Simulation variables
   integer   seed;
   time      dt, iter_start, maxDelay;

   // Signals
   logic 	 Clk;
   logic [7:0] dut_in;
   logic dut_out;
   
   initial begin
      seed <= `RANDOM_SEED;
      maxDelay = 0;
      dt = 0;
      dut_in = '0;
      
      $display("time=%10t ************** Loading Arguments *****************", $time);
      ProcessArgs();
      $display("Seed=%d ",`RANDOM_SEED);
      dut_in = $random(seed); // initial the random number generator
      $display("time=%10t ************** Runnning Test *****************", $time);
      RunTest();
      #1;
      $display("time=%10t * Test finished with max delay measured %0t ps*", $time, maxDelay);
      $display("time=%10t ********************FINISH***********************", $time);
      $finish(2);
   end // initial begin
   
   // Let's make a simple clock signal
   always
     begin
	Clk = 1;
	#(CLK_PER/2);
	Clk = 0;
	#(CLK_PER/2);
     end

   /****************************************************************************
    * Instantiate DUT (Design Under Test) here
    * **************************************************************************/
   naive_AND8 dut(.In(dut_in), .Out(dut_out));
   

   /****************************************************************************
    * Driver
    * **************************************************************************/
   task RunTest;
      integer i;
      @(posedge Clk);
      @(posedge Clk);
      
      for (i=0; i<NUM_ITERS; i++)
	begin
	   @(posedge Clk);
	   //start the timer
	   iter_start = $time;

	   //put some input value
	   dut_in = $random;
	end      
   endtask // RunTest


   
   /****************************************************************************
    * Monitor
    * **************************************************************************/
   //measure the time for each transaction
   always @(dut_out) begin
      if (Clk)
	begin
           dt = ($time - iter_start);
           if (dt > maxDelay)
             maxDelay = dt;
	end
   end

   // make sure that the result is correct!
   result_monitor_asrt: assert property
     (@(negedge Clk) dut_out == (& dut_in))
     else
       $error("ERROR at time=%10t: Found %0b as a result of %8b", $time, dut_out, dut_in);
   
   

   
   /****************************************************************************
    * Other Tasks:
    * *************************************************************************/
   task ProcessArgs;
      begin
         // if this is a "+wave" run, it must record all signals
         if ( $test$plusargs("wave") ) begin
            //         levels  instance
            $display("time=%10t Starting Wave Capture", $time);
            $vcdpluson(0);
         end
      end
   endtask // ProcessArgs
   

endmodule // top

