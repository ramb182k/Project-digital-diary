`timescale 1ns/1ps
`define DMEM_N_FILE(x,y) {x,y,".mem"}
`define MEMTOP 4095
`define EXTMEM "./ext_mem/"
module extern_mem (
    input clk,
    input [31:0] daddr,
    input [31:0] dwdata,
    input [3:0] dwe,
    output [31:0] drdata
);
    reg [31:0] mem [4096:0];

    wire [31:0] a;

//     initial begin 
//         $readmemh({"./ext_mem/diary0.mem"}, mem); 
        
//     end
    integer i;           //variable for for-loop
    initial 
      begin
          for(i=0; i<4096 ; i=i+1) 
            mem[i] <= 32'b0;          //initializing the registers to 0
      end

    assign a = daddr[31:0];
    
    // Selecting bytes to be done inside CPU
    assign drdata = mem[a[11:0]]; 

    always @(posedge clk) begin
        if (dwe & daddr[19:16]==4'h1) mem[a[11:0]] <= dwdata;
        
    end


endmodule