
/* *****************************************************************************
 * File name: naive_AND8.v
 * Made by: Ofer Shacham
 * 
 * Description: 
 * This file contains a very naive answer to hw3 of class EE271 2009
 * ****************************************************************************/


module naive_AND8
  (input [7:0] In,
    output Out);

   /* Since AND = NAND followed by INV, I'll implement a simple chain of 
    * NANDs and INVs */
   logic   nand_01,  and_01;
   logic   nand_012,  and_012;
   logic   nand_0123,  and_0123;
   logic   nand_01234,  and_01234;
   logic   nand_012345,  and_012345;
   logic   nand_0123456,  and_0123456;
   logic   nand_01234567,  and_01234567;

   NAND2 nander_01(.In1(In[0]), .In2(In[1]), .Out(nand_01));
   INV inver_01(.In(nand_01), .Out(and_01));
   
   NAND2 nander_012(.In1(In[2]), .In2(and_01), .Out(nand_012));
   INV inver_012(.In(nand_012), .Out(and_012));
   
   NAND2 nander_0123(.In1(In[3]), .In2(and_012), .Out(nand_0123));
   INV inver_0123(.In(nand_0123), .Out(and_0123));
   
   NAND2 nander_01234(.In1(In[4]), .In2(and_0123), .Out(nand_01234));
   INV inver_01234(.In(nand_01234), .Out(and_01234));
   
   NAND2 nander_012345(.In1(In[5]), .In2(and_01234), .Out(nand_012345));
   INV inver_012345(.In(nand_012345), .Out(and_012345));
   
   NAND2 nander_0123456(.In1(In[6]), .In2(and_012345), .Out(nand_0123456));
   INV inver_0123456(.In(nand_0123456), .Out(and_0123456));
   
   NAND2 nander_01234567(.In1(In[7]), .In2(and_0123456), .Out(nand_01234567));
   INV inver_01234567(.In(nand_01234567), .Out(and_01234567));

   assign  Out = and_01234567;
      
endmodule // naive_AND8
