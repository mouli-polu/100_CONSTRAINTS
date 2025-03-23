//https://www.edaplayground.com/x/BWtx
class non-consecutive;
  
  rand logic[31:0] var32;
  
  constraint c1{$countones(var32)==12;}
  
  constraint c2 {
    
    foreach(var32[i]) {
      if(i>0) 
        var32[i]+var32[i-1] !=2;
    }
      
  }
endclass
module tb;
  non-consecutive n_c;
  initial begin
    n_c=new();
    repeat(10) begin
      n_c.randomize();
      $display ("var32 =%b , no.of ones =%d",n_c.var32,$countones(n_c.var32));
    end
  end
endmodule
      
