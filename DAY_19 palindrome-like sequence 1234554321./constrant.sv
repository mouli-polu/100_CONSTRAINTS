// https://edaplayground.com/x/essM
// Write a constraint to generate the palindrome-like sequence 1234554321.
//     DAY_19 palindrome-like sequence 1234554321.

class palindrome ;

  rand bit[2:0] Sequence[];
  rand bit[2:0] Sequence2[];
 
  constraint size_constraint { 
    Sequence.size inside{[20:21]};
    Sequence2.size ==9;
  }
  
  constraint sequence_rule {      //suitable for both even size or odd size
    foreach(Sequence[i]) { 
        Sequence[i] == Sequence[(Sequence.size)-i-1];    // main condion for generating sequence
      }   
  } 
      constraint sequence_rule_2 {		//suitable for odd size of array
          foreach(Sequence2[i]) {
            if(i<5) 
              Sequence2[i] ==i+1;
            else 
              Sequence2[i] == Sequence2[i-1]-1;
          }
        }
          
      endclass

module  tb;
  
  palindrome seqGen;
  
  initial begin
    seqGen =new();
    
     repeat (10) begin
    seqGen.randomize();
       
    $display (" Sequence =%0p", seqGen.Sequence);
      $display (" Sequence2 =%0p", seqGen.Sequence2);
    end  
    
  end
endmodule
      
  
  
