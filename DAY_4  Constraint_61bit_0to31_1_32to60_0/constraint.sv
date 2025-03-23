class base;
  rand logic[61:0] VAR;
  constraint c1{
    VAR [31:0]=='1;
    VAR  [61:32]==0;
  }
endclass
module tb;
  initial begin
    base B=new();
    repeat(10) begin
      B.randomize();
      $display("VAR=%b",B.VAR);
    end
  end
endmodule
