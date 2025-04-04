// Write a constraint to generate a 10-bit variable with alternating numbers.
//   DAY_17 alternating numbers(10 bit length).
class SequenceGenerator ;
  rand bit[9:0] Sequence[];
 
  constraint size_constraint { 
    Sequence.size ==20;
  }
    constraint sequence_rule {
      foreach(Sequence[i]) {
        if(i>0)
          Sequence[i] ==Sequence[i-1]+2;
        
      }   
    }
      endclass

module  tb;
  SequenceGenerator seqGen; 
  
  initial begin
    seqGen =new();
    seqGen.randomize();
    
    foreach (seqGen.Sequence[i]) begin
      $display (" Sequence [%0d] =%0d", i,seqGen.Sequence[i]);
    end
    
  end
endmodule
      
  
  
