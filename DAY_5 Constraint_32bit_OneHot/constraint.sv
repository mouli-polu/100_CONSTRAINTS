class onehot;
  rand logic[31:0] VAR;
  constraint c1{
    $countones(VAR)==1;
  }
endclass

module tb;
  onehot one_hot;
  initial begin
    one_hot=new();
    repeat (10) begin
      one_hot.randomize();
      $display("VAR=%b",one_hot.VAR);
    end
  end
endmodule
