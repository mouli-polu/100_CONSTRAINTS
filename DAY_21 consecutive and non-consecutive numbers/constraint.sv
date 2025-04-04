// Write a constraint to generate consecutive and non-consecutive numbers in a fixed array
//DAY_21 consecutive and non-consecutive numbers
//   https://edaplayground.com/x/ieK4
class NumberSequence;
  rand bit[4:0] numbers[20];  // Array to store 20 numbers

  constraint sequence_rule {
    foreach(numbers[i]) {
      if(i >= numbers.size / 2)     // First half: random, Second half: consecutive numbers
        numbers[i] == numbers[i-1] + 1;  
    }
  }
endclass

module tb;
  NumberSequence seq;
  
  initial begin
    seq = new();
    seq.randomize();
    
    foreach (seq.numbers[i]) begin
      $display("numbers[%0d] = %0d", i, seq.numbers[i]);
    end
  end
endmodule
