//Write a constraint to generate consecutive elements in a 2D array.


//write a constraint to generate 0 to 200 numbers in a 2d array each row consist only 10 numbers i.e 0:9 in row1 and 10:20 in row 2 ...................DAY_22 consecutive elements in a 2D array 
//https://edaplayground.com/x/WmCX
class NumberMatrix;
  rand bit[31:0] matrix[][];  // 2D dynamic array

  // Constraint: Matrix has 20 rows, each row has 10 columns
  constraint size_constraint { 
    matrix.size == 20;
    foreach (matrix[i])
      matrix[i].size == 10;
  }

                          // Constraint: Generate a number sequence in a structured way
//   constraint sequence_rule {
//     foreach(matrix[i, j]) {
//       if (i == 0) {  // First row: Start at 0, increment by 1
//         foreach (matrix[j]) {
//           if (j == 0)
//             matrix[i][j] == 0;
//           else 
//             matrix[i][j] == matrix[i][j-1] + 1;
//         }
//       } else {  // Subsequent rows: Increment by 10 for each row
//         matrix[i][j] == matrix[i-1][j] + 10;
//       }
//     }
//   }
  
  constraint simple_rule{     //simple condition row _number *10+colom_number
    foreach(matrix[i,j])
      matrix[i][j]==((i*10) +j);
  }
endclass

module tb;
  NumberMatrix nm;
  
  initial begin
    nm = new();
    nm.randomize();
    
    foreach (nm.matrix[i]) begin
      $write ("Row %0d :",i);
      foreach (nm.matrix[i][j]) 
        $write("matrix[%0d][%0d] = %0d  ", i, j, nm.matrix[i][j]);
      $display("");
    end
  end
endmodule

//   initial begin
//     nm = new();
//     if (nm.randomize()) begin
//       $display("Generated 2D Number Matrix:");
//       foreach (nm.matrix[i]) begin
//         $write("Row %0d: ", i);
//         foreach (nm.matrix[i][j])
//           $write("%0d ", nm.matrix[i][j]);
//         $display(""); // New line after each row
//       end
//     end else begin
//       $display("Randomization failed!");
//     end
//   end
// endmodule
