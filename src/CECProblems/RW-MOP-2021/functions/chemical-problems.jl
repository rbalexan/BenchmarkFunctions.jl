# chemical problems
# 22
function haverlys_pooling_problem(x) 
    ## Haverly's Pooling Problem
    x1 = x[1]; x2 = x[2]; x3 = x[3];
    x4 = x[4]; x5 = x[5]; x6 = x[6];
    x7 = x[7]; x8 = x[8]; x9 = x[9];
    ## objective function
    f = zeros(2);
    f[1] = -9*x1-15*x2+6*x3+16*x4;
    f[2] = 10 .* (x5+x6);
    ## constraints
    g = zeros(2);
    h = zeros(4);
    g[1] = x9 .* x7+2*x5-2.5*x1;
    g[2] = x9 .* x8+2*x6-1.5*x2;
    h[1] = x7+x8-x4-x3;
    h[2] = x1-x5-x7;
    h[3] = x2-x6-x8;
    h[4] = x9 .* x7+x9 .* x8-3 .* x3-x4;

    return f, g, h
end

# 23
function reactor_network_design(x) 
    ## Reactor Network Design
    k1 = 0.09755988; k2 = 0.99*k1;
    k3 = 0.0391908; k4 = 0.9*k3;
    x1 = x[1]; x2 = x[2]; x3 = x[3];
    x4 = x[4]; x5 = x[5]; x6 = x[6];
    ## objective function
    f = zeros(2);
    f[1] = -x4;
    f[2] = x5 .^ (0.5)+x6 .^ (0.5);
    ## constraints
    g = zeros(1);
    h = zeros(4);
    g[1] = f[2]-4;
    h[1] = k1 .* x5 .* x2 + x1 -1;
    h[2] = k3 .* x5 .* x3+x3+x1-1;
    h[3] = k2 .* x6 .* x2 - x1 + x2;
    h[4] = k4 .* x6 .* x4 + x2-x1+x4-x3;

    return f, g, h
end

# 24
function heat_exchanger_network_design(x) 
    ## Heat Exchanger Network Design
    x1 = x[1]; x2 = x[2]; x3 = x[3]; x4 = x[4]; x5 = x[5];
    x6 = x[6]; x7 = x[7]; x8 = x[8]; x9 = x[9];
    ## objective function
    f = zeros(3);
    f[1] = 35 .* x1 .^ (0.6)+ 35 .* x2 .^ (0.6);
    f[2] = 200 .* x1 .* x4-x3;
    f[3] = 200 .* x2 .* x6-x5;
    ## constraints
    g = zeros(1);
    h = zeros(6);
    h[1] = x3 - 1e4 .* (x7-100);
    h[2] = x5 - 1e4 .* (300-x7);
    h[3] = x3 - 1e4 .* (600-x8);
    h[4] = x5 - 1e4 .* (900-x9);
    h[5] = x4 .* log(abs(x8-100)+1e-6)-x4 .* log(abs(600-x7)+1e-6)-x8+x7+500;
    h[6] = x6 .* log(abs(x9-x7)+1e-6)-x6 .* log(600)-x9+x7+600;

    return f, g, h
end

