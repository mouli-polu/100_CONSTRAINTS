// Code your testbench here
// or browse Examples
class EVEN ;
  rand bit [6:0] a [];
  
  constraint c1  { 
    a.size ==30;
  }
  constraint c2 {
    foreach (a[j])
      if(j>1)
        (a[j]+a[j-1]+a[j-2] ) %2==0;
  }
endclass


 module tb;
   int sum; 
    EVEN even;
   initial begin 
     even =new();
     even.randomize();
     
      foreach (even.a[i])  
        $display("a[%0d]=%d ",i,even.a[i]);
     
     for(int i=0;i <=28;i=i+1) begin
       sum=(even.a[i]+even.a[i+1]+even.a[i+2]);
       $display(" (a[%0d] =%d + a[%0d]=%d +a[%0d]=%d) = %d",i,even.a[i],i+1,even.a[i+1],i+2,even.a[i+2],sum);
     end   
   end
 endmodule
                 
       
     //https://edaplayground.com/x/FpJX
