// Code your testbench here
// or browse Examples
class pattern;
  rand int value[];
  constraint c1 {
    value.size inside {[10:20]};
  }
  constraint c2 {
    foreach (value [i]){
      value [i] == (i*10+9);
//       if(i==0)
//         value[i]=9;
//       else 
//         value[i]=value[i-1]+9;
    }
  }
      
    
      endclass
      module pattern_gen;
        pattern pat;
        initial begin 
          pat=new();
          repeat (20) begin
          pat.randomize();
          end
          foreach (pat.value[i])
            $display("value[%d]=%d",i,pat.value[i] );
        end
      endmodule
          
          
