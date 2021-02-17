`timescale 1ns/1ps
`define OUTFILE "output.txt"

module display (
    input clk,
    input reset,
    input [31:0] daddr,
    input [31:0] dwdata,
    input [3:0] dwe,
    output [31:0] drdata
);
    reg [31:0] read_data;
    // Implement the peripheral logic here: use $fwrite to the file output.txt
    // Use the `define above to open the file so that it can be 
    // overridden later if needed

    // Return value from here (if requested based on address) should
    // be the number of values written so far
    integer f,f1,r;
    initial begin
        f=$fopen(`OUTFILE,"w"); //to open a new file, deletes previous contents
        $fclose(f);
        f1=$fopen("input.txt","r");
    end
    always@(posedge clk) begin
       
        if(reset) read_data<=0;
        else begin
            if(dwe!=0  & daddr==32'h00034560)begin 
                f=$fopen(`OUTFILE,"a");   //append the file
                $fwrite(f,"%c",dwdata);   //write char data
                $fclose(f);               //close file
            end
           
            
        end  
    end
    always@(*)begin
        if(daddr==32'h00034564) begin
                r=$fscanf(f1, "%h", read_data); 
            end 
    end
    
    assign drdata = read_data;  //return number of writes so far

endmodule