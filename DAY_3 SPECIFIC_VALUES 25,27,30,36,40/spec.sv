class specific;
  rand int VAR;
  
  
  constraint c2 {
    VAR inside {25,27,30,36,40,45};
  }
endclass
module tb;
  specific spec;
  initial begin
    spec =new();
    repeat (10) begin
    	spec.randomize();
    	$display ("VAR= %d",spec.VAR);
    end
  end
endmodule
