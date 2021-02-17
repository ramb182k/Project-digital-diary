`timescale 1ns/1ps
// Bus interface unit: assumes two branches of the bus -
// 1. connect to dmem
// 2. connect to a single peripheral
// The BIU needs to know the addresses at which DMEM and peripheral are
// connected, so it can do the required multiplexing. 
// These need to be added as part of your code. 
module biu (
    input clk,
    input reset,
    input [31:0] daddr,
    input [31:0] dwdata,
    input [3:0] dwe,
    output [31:0] drdata,

    // Signals going to/from dmem
    output [31:0] daddr1,
    output [31:0] dwdata1,
    output [3:0]  dwe1,
    input  [31:0] drdata1,

    // Signals going to/from peripheral
    output [31:0] daddr2,
    output [31:0] dwdata2,
    output [3:0]  dwe2,
    input  [31:0] drdata2,
    
    output [31:0] daddr3,
    output [31:0] dwdata3,
    output [3:0]  dwe3,
    input  [31:0] drdata3
);
    reg [31:0] read;

    // Modify below so that depending on the actual daddr range the BIU decides whether 
    // the response was from DMEM or peripheral - maybe a MUX?
    
    always@(drdata1 or drdata2 or drdata3 or daddr)begin
        if(daddr[19:16]==4'h1) read=drdata3;
        else if(daddr==32'h00034564) read = drdata2;
        else read=drdata1;
    end
        
    assign drdata = read;

    // Send values to DMEM or peripheral (or both if it does not matter)
    // as required
    //we can send values to both peripheral and DMEM since both addr do not overlap
    assign daddr1 = daddr;
    assign dwdata1 = dwdata;
    assign dwe1 = dwe;

    assign daddr2 = daddr;
    assign dwdata2 = dwdata;
    assign dwe2 = dwe;
    
    assign daddr3 = daddr;
    assign dwdata3 = dwdata;
    assign dwe3 =dwe ;

endmodule