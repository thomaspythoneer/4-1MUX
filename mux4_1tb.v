module mux4_1_tb;

  reg  [3:0] d;
  reg  [1:0] sel;
  wire       y;

  mux4_1 DUT ( .data_in(d), .sel_in(sel), .y_out(y));

  task initialize;
    begin
      d   = 4'd0;
      sel = 2'd0;
    end
  endtask

  task stimulus(input [3:0] i, input [1:0] j);
    begin
      #10;
      d   = i;
      sel = j;
    end
  endtask

  initial begin
    initialize;
    stimulus(4'd5,  2'd2);  
    stimulus(4'd15, 2'd3);  
    stimulus(4'd6,  2'd1); 
    #10;
    $finish;
  end

endmodule
