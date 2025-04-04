// Code your design here
// Write a constraint to generate the sequence 1122334455.
// DAY_18   sequence 1122334455.
class SequenceGenerator ;
  rand bit[4:0] Sequence[];
 
  constraint size_constraint { 
    Sequence.size ==20;
  }
    constraint sequence_rule {
      foreach(Sequence[i]) {
        Sequence[i] ==i/2;  // main condion for generating sequence
         
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
      
  
  
