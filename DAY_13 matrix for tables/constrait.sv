//https://edaplayground.com/x/Wm6P
class Multiplicationmult_table ;
  rand bit[8:0] Table[20:1][20:1];

  constraint c2{
    foreach (Table[i,j]) {
      Table[i][j]==i*j;
    } 
  }
      
  
endclass

module  tb;
  Multiplicationmult_table mult_table; 
  initial begin
    mult_table =new();
    mult_table.randomize();
    foreach (mult_table.Table[i]) begin
      
      foreach(mult_table.Table[j]) begin
        $display (" Table [%0d][%0d] =%0d", i,j,mult_table.Table[i][j]);
      end
      
    end
    foreach (mult_table.Table[k]) 
      $display (" Table [%0d] =%0p",k,mult_table.Table[k]);
  end
endmodule
      
  
  
