// Implement one-hot state machine
module one_hot(
    input w,
    input clk,
    input rst,
    output Astate, Bstate, Cstate, Dstate, Estate,
    output z
);
    wire Anext, Bnext, Cnext, Dnext, Enext;
//    wire Astate, Bstate, Cstate, Dstate, Estate;
    
//    assign AState = Astate;
//    assign BState = Bstate;
//    assign CState = Cstate;
//    assign DState = Dstate;
//    assign EState = Estate;

    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .Q(Astate),
        .reset(rst)
    );

    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .Q(Bstate),
        .reset(rst)
    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .Q(Cstate),
        .reset(rst)
    );
    
    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .Q(Dstate),
        .reset(rst)
    );

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .Q(Estate),
        .reset(rst)
    );

    
    assign z = Cstate | Estate;

    assign Anext = 0;
    assign Bnext = ~w & (Astate | Dstate | Estate);
    assign Cnext = ~w & (Bstate | Cstate);
    assign Dnext = w & (Astate | Bstate | Cstate);
    assign Enext = w & (Dstate | Estate);
    
endmodule