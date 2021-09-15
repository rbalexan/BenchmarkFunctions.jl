# Process Design and Synthesis

# 25
function process_synthesis(x)
        ## process synthesis problem
        x1 = x[1]; x2 = round5(x[2]);
        ## objective function
        f = zeros(2);
        f[1] = x2 + 2*x1;
        f[2] = -x1 .^ 2 -x2;
        ## constraints
        g = zeros(2);
        h = zeros(1);
        g[1] = f[2] +1.25;
        g[2] = x1 + x2 -1.6;

        return f, g, h
end

# 26
function process_sythesis_and_design(x)

        ## Process sythesis and Design Problems
        x1 = x[1]; x2 = x[2]; x3 = round5(x[3]);
        ## objective function
        f = zeros(2);
        f[1] = -x3 + x2 + 2*x1;
        f[2] = -x1 .^ 2 - x2 + x1 .* x3;
        ## constraints
        h = zeros(1);
        g = zeros(1);
        h[1] = -2 .* exp(-x2) + x1;
        g[1] = x2 - x1 + x3;
        return f, g, h
end


# 27
function process_flow_sheeting_problem(x)

        ## Process flow sheeting Problem
        x1 = x[1]; x2 = x[2]; x3 = x[3];
        ## objective function
        f = zeros(2);
        f[1] = -0.7 .* x3 + 0.8 + 5 .* (0.5 - x1) .^ 2;
        f[2] = x1 - x3;
        ## constraints
        g = zeros(3);
        h = zeros(1);
        g[1] = -(exp(x1 - 0.2) + x2);
        g[2] = x2 + 1.1 .* x3 - 1;
        g[3] = x1 - x3 - 0.2;
        return f, g, h
end

# 28
function two_reactor_problem(x) 
        ## Two reactor Problem
        x1 = x[1];
        x2 = x[2];
        v1 = x[3];
        v2 = x[4];
        y1 = round5(x[5]);
        y2 = round5(x[6]);
        x_ = x[7];

        z1 = 0.9*(1-exp(-0.5 .* v1)) .* x1;
        z2 = 0.8*(1-exp(-0.4*v2)) .* x2;
        ## objective function
        f = zeros(2);
        f[1] = 7.5 .* y1 + 5.5 .* y2 + 7 .* v1 + 6 .* v2 + 5 .* x_;
        f[2] = x1 + x2;
        ## constraints
        g = zeros(4);
        h = zeros(4);
        h[1] = y1 + y2 - 1;
        h[2] = z1 + z2 - 10;
        h[3] = x1 + x2 -x_;
        h[4] = z1 .* y1 + z2 .* y2 - 10;
        g[1] = v1 - 10*y1 -1e-6;
        g[2] = v2 - 10*y2;
        g[3] = x1 - 20*y1;
        g[4] = x2 - 20*y2;
        return f, g, h
end


# 29
function process_synthesis_problem(x)
        ## process synthesis problem
        x1 = x[1]; x2 = x[2]; x3 = x[3]; x4 = round5(x[4]);
        x5 = round5(x[5]); x6 = round5(x[6]); x7 = round5(x[7]);
        ## objective function
        f = zeros(2);
        f[1] = (1-x4) .^ 2 + (1-x5) .^ 2 + (1-x6) .^ 2 - log(abs(1+x7)+1e-6);
        f[2] = (1-x1) .^ 2 + (2-x2) .^ 2 + (3-x3) .^ 2;
        ## constraints
        g = zeros(9);
        h = zeros(1);
        g[1] = x1 + x2 + x3 + x4 + x5 + x6 -5;
        g[2] = x6 .^ 3 + x1 .^ 2 + x2 .^ 2 + x3 .^ 2 - 5.5;
        g[3] = x1 + x4 - 1.2;
        g[4] = x2 + x5 - 1.8;
        g[5] = x3 + x6 - 2.5;
        g[6] = x1 + x7 - 1.2;
        g[7] = x5 .^ 2 + x2 .^ 2 - 1.64;
        g[8] = x6 .^ 2 + x3 .^ 2 - 4.25;
        g[9] = x5 .^ 2 + x3 .^ 2 - 4.64;
        return f, g, h
end

