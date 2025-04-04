//DAY_14 variable A depends on ones in variable B
//https://edaplayground.com/x/kgyB
//DAY_14 variable A depends on ones in variable B
//Write a constraint where the number of 1's in one variable depends on another variable.
class cls ;
  rand bit[31:0] xyz;
  
  rand bit [6:0] zyx ;
  
  
  constraint c1 { solve xyz before zyx;
                 zyx ==$countones(xyz);   //zyx value modify when there is a change in num of ones in xyz
                }
endclass

module  tb;
  cls claz; 
  initial begin
    claz =new();
    
    repeat (10) begin
      claz.randomize();  
      $display (" xyz  =%0b",claz.xyz);
      $display (" zyx  =%0d",claz.zyx);
    end
  end
endmodule
      
  
  
