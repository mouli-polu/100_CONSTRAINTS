  
  
//https://edaplayground.com/x/Sm7Z
class cls ;
  rand bit[5:0] xyz[][];

  constraint c1 { 
    xyz.size ==5;        //no.of rows
    foreach(xyz[i]) 
      xyz[i].size ==5;   //no.of coloums for each row
  }
  constraint c2{
    foreach (xyz[i,j]) {
      
      if(i==0)
        unique {xyz[j]};        // xyz[0] row have unique values 
      
      else if (i==1) 
        xyz[i][j] %2==0;        //xyz[1] row have multiple of2
      
      else if (i==2)
        xyz[i][j] %3==0;		//xyz[2] row have multiple of 3
      
      else if (i==3) 
        xyz[i][j] %4==0;    //xyz[3] row have  multiple of 4
      
      else 
        xyz[i][j] %5==0;      //xyz[4] row have multiple of 5
    }
  }     
      
  
endclass

module  tb;
  cls claz;
  initial begin
    claz =new();
    claz.randomize();
    foreach (claz.xyz[i]) begin
      foreach(claz.xyz[j]) begin
        $display (" xyz [%0d][%0d] =%0d", i,j,claz.xyz[i][j]);
      end
    end
  end
endmodule
      
  
  
//https://edaplayground.com/x/Sm7Z
