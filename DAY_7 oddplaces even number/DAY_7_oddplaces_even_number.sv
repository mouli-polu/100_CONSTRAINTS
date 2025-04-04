// Code your testbench here
// or browse Examples
class Sequence;
  rand bit[4:0] a[];
  constraint c1{
    a.size ==50;
    foreach (a[i]) {
      if(i%2==1)
        a[i]%2==0;
    }
  }
      endclass
      module tb; 
        initial begin
          Sequence seq=new();
          seq.randomize();
          foreach(seq.a[i])
            $display ("a[%d] = %d",i,seq.a[i]);
        end
      endmodule
              
  
