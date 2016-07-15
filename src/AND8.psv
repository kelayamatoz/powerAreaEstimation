
module behavioral_AND8 ( io_a, io_b, io_opcode, io_out );
  input [3:0] io_a;
  input [3:0] io_b;
  input [1:0] io_opcode;
  output [3:0] io_out;
  wire   n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88;

  ND2D1BWP U42 ( .A1(io_opcode[1]), .A2(n44), .ZN(n72) );
  INVD1BWP U43 ( .I(io_a[2]), .ZN(n71) );
  INVD1BWP U44 ( .I(n58), .ZN(n76) );
  INVD12BWP U45 ( .I(n59), .ZN(io_out[0]) );
  AO22D1BWP U46 ( .A1(io_a[1]), .A2(n77), .B1(io_b[1]), .B2(n76), .Z(n88) );
  MUX2ND1BWP U47 ( .I0(n86), .I1(n85), .S(n84), .ZN(n87) );
  AOI21D1BWP U48 ( .A1(n73), .A2(n72), .B(n71), .ZN(n74) );
  IND2D1BWP U49 ( .A1(io_b[2]), .B1(n71), .ZN(n65) );
  AN2D1BWP U50 ( .A1(io_b[0]), .A2(io_a[0]), .Z(n78) );
  AOI22D1BWP U51 ( .A1(n61), .A2(n81), .B1(n60), .B2(n82), .ZN(n37) );
  IOA21D1BWP U52 ( .A1(n65), .A2(n37), .B(n70), .ZN(n69) );
  CKND2D1BWP U53 ( .A1(n39), .A2(io_a[0]), .ZN(n38) );
  INVD1BWP U54 ( .I(n57), .ZN(n39) );
  ND3D1BWP U55 ( .A1(n68), .A2(n67), .A3(n66), .ZN(n70) );
  OA222D1BWP U56 ( .A1(n58), .A2(n57), .B1(n80), .B2(io_opcode[1]), .C1(n56), 
        .C2(n55), .Z(n59) );
  ND2D1BWP U57 ( .A1(io_b[0]), .A2(n56), .ZN(n80) );
  IOA21D1BWP U58 ( .A1(io_b[2]), .A2(n76), .B(n69), .ZN(n75) );
  OR2D8BWP U59 ( .A1(n75), .A2(n74), .Z(io_out[2]) );
  CKND1BWP U60 ( .I(io_opcode[0]), .ZN(n44) );
  ND2D1BWP U61 ( .A1(io_opcode[1]), .A2(n72), .ZN(n58) );
  CKND1BWP U62 ( .I(n72), .ZN(n77) );
  AO22D2BWP U63 ( .A1(io_b[3]), .A2(n76), .B1(io_a[3]), .B2(n77), .Z(n53) );
  CKND1BWP U64 ( .I(io_b[0]), .ZN(n57) );
  CKND1BWP U65 ( .I(io_a[0]), .ZN(n56) );
  CKND1BWP U66 ( .I(io_b[1]), .ZN(n41) );
  OAI21D1BWP U67 ( .A1(n80), .A2(n41), .B(io_a[1]), .ZN(n43) );
  ND2D1BWP U68 ( .A1(n80), .A2(n41), .ZN(n42) );
  CKND2D1BWP U69 ( .A1(n43), .A2(n42), .ZN(n61) );
  CKND1BWP U70 ( .I(n61), .ZN(n62) );
  FCICOND1BWP U71 ( .A(n62), .B(n71), .CI(io_b[2]), .CON(n47) );
  CKND1BWP U72 ( .I(n47), .ZN(n46) );
  NR2D1BWP U73 ( .A1(n44), .A2(io_opcode[1]), .ZN(n81) );
  FCICOND1BWP U74 ( .A(io_a[1]), .B(n78), .CI(io_b[1]), .CON(n60) );
  CKND2BWP U75 ( .I(n60), .ZN(n63) );
  FCICOND1BWP U76 ( .A(n63), .B(io_a[2]), .CI(io_b[2]), .CON(n48) );
  CKND1BWP U77 ( .I(n48), .ZN(n45) );
  NR2D1BWP U78 ( .A1(io_opcode[1]), .A2(io_opcode[0]), .ZN(n82) );
  AOI22D1BWP U79 ( .A1(n46), .A2(n81), .B1(n45), .B2(n82), .ZN(n51) );
  AOI22D1BWP U80 ( .A1(n82), .A2(n48), .B1(n81), .B2(n47), .ZN(n50) );
  XOR2D1BWP U81 ( .A1(io_b[3]), .A2(io_a[3]), .Z(n49) );
  MUX2ND4BWP U82 ( .I0(n51), .I1(n50), .S(n49), .ZN(n52) );
  NR2D8BWP U83 ( .A1(n53), .A2(n52), .ZN(n54) );
  INVD16BWP U84 ( .I(n54), .ZN(io_out[3]) );
  OA21D1BWP U85 ( .A1(io_b[0]), .A2(io_opcode[1]), .B(n72), .Z(n55) );
  ND2D1BWP U86 ( .A1(n62), .A2(n81), .ZN(n68) );
  ND2D1BWP U87 ( .A1(n63), .A2(n82), .ZN(n67) );
  CKND2D1BWP U88 ( .A1(io_b[2]), .A2(io_a[2]), .ZN(n64) );
  ND2D1BWP U89 ( .A1(n65), .A2(n64), .ZN(n66) );
  ND2D1BWP U90 ( .A1(n70), .A2(io_b[2]), .ZN(n73) );
  CKND1BWP U91 ( .I(n80), .ZN(n79) );
  AOI22D1BWP U92 ( .A1(n79), .A2(n81), .B1(n78), .B2(n82), .ZN(n86) );
  AOI22D1BWP U93 ( .A1(n82), .A2(n38), .B1(n81), .B2(n80), .ZN(n85) );
  CKND1BWP U94 ( .I(io_a[1]), .ZN(n83) );
  XNR2D1BWP U95 ( .A1(n83), .A2(io_b[1]), .ZN(n84) );
  OR2D8BWP U96 ( .A1(n88), .A2(n87), .Z(io_out[1]) );
endmodule

