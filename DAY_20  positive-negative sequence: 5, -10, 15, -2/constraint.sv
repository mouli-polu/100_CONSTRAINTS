// https://edaplayground.com/x/F7bN
// Write a constraint to generate the alternating positive-negative sequence: 5, -10, 15, -20, 25, -30.
// DAY_20  positive-negative sequence: 5, -10, 15, -2
class positive_negitive;
  rand shortint array[];
  bit [3:0] pos =5;
  int neg = -4'd10;
  
  constraint size_constraint {
    array.size inside {[15:20]};
  }
  constraint LOGIC{
    
    foreach (array[i]){
      if(i%2==0) {
        if(i==0)
          array[i]==pos;
      else 
        array[i]==array[i-2]+10; 
    }
      else {
        if(i==1)
          array[i]==neg;
      else 
        array[i]==array[i-2]-10;
    }
    }
  }
    function void post_randomize();
      foreach(array[i])
        $display ( "array[%d] = ",i,this.array[i]);
    endfunction
endclass
    
module pos_negg;
  positive_negitive pos_neg;
  initial begin 
    pos_neg =new();
    //repeat (10);
    pos_neg.randomize();
  end
endmodule
