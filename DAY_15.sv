// https://edaplayground.com/x/kkMA
// DAY_15   two queues contain different elements.
// Write a constraint to ensure that two queues contain different elements.
class UniqueValues ;
  rand bit[5:0] arrayA[$];
  
  rand bit [5:0] arrayB[$] ;
  
  
  constraint size_constraint  { 
    arrayA.size ==20;
    arrayB.size ==20; 
  }
  constraint UNIQUE_constraint{
    unique {arrayA,arrayB};
    
  }
      endclass 

module  tb;
  UniqueValues obj;
  initial begin
    obj =new();
    obj.randomize();
    foreach (obj.arrayA[i]) begin
      $display (" arrayA [%0d] =%0d", i,obj.arrayA[i]);
      $display (" arrayB [%0d] =%0d", i,obj.arrayB[i]);
    end
  end
endmodule
      
  
  
