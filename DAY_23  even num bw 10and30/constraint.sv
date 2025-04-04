//Write a constraint to generate even numbers between 10 and 30.
//https://edaplayground.com/x/JQM8
//DAY_23  even num b/w 10and30
class EvenNumberArray ;
  rand bit[5:0] evenNumbers[];

  constraint size_constraint { 
    evenNumbers.size ==10;
    
}
  constraint sequence_rule {
    foreach(evenNumbers[i]) {
      evenNumbers[i] inside {[11:29]};
      evenNumbers[i]%2==0;      
    }  
  }
endclass

module  tb;
  EvenNumberArray base;
  initial begin
    base =new();
    if (base.randomize()) begin
      foreach (base.evenNumbers[i]) begin
        $display (" evenNumbers [%0d] =%0d", i,base.evenNumbers[i]);
      end
    end 
    else begin
      $display("Randomization failed!");
    end
  end
endmodule
      
  
  
