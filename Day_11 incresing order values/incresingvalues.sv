// Code your testbench here
// or browse Examples
class increment ;
  rand bit[5:0] incr_var[];
  
  constraint c1 { 
    incr_var.size ==20;
    foreach(incr_var[i]) 
      if(i>0)
        incr_var [i]> incr_var[i-1];    
  }
endclass
 
module  tb;
  increment obj;
  initial begin
    obj =new();
    obj.randomize();
    foreach (obj.incr_var[i]) begin
      $display (" incr_var [%0d] =%0d", i, obj.incr_var[i]);
    end
  end
endmodule
      
  
  

