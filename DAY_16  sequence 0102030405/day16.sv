//Write a constraint to generate the sequence 0102030405.
//DAY_16  sequence 0102030405.https://edaplayground.com/x/uKFZ
class SequenceGenerator ;
  rand bit[4:0] Sequence[];
 
  constraint size_constraint { 
    Sequence.size ==20;
  }
  constraint sequence_rule {  // main condion for generating sequence
      foreach(Sequence[i]) {
        if (i%2 ==0)
          Sequence[i] == 0;
        else if(i==1)
          Sequence[i]==1;
        else
          Sequence[i] == Sequence[i-2] +1;   
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
      
  
  
