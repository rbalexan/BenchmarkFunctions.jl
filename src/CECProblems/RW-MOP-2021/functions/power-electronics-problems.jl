# Power electronics Problem

# 30
function SOPWM_for_3_level_invereters(x)
    D = length(x)
    ## SOPWM for 3-level Invereters
    m = 0.32;
    s = (-ones(25)) .^ (2:26);
    k = [5,7,11,13,17,19,23,25,29,31,35,37,41,43,47,49,53,55,59,61,65,67,71,73,77,79,83,85,91,95,97];
    ## objective function
    f = zeros(2);
    su = 0;
    for j = 1:31
        su2 = 0;
        for l = 1:D
            su2 = su2 + s[l] .* cos(k[j] .* x[l]*pi/180);
        end
        su = su + su2 .^ 2 ./ k[j] .^ 4;
    end
    f[1] = (su) .^ 0.5 ./ (sum(1 ./ k .^ 4)) .^ 0.5;
    f[2] = (sum(s .* cos.(x*pi/180))-m) .^ 2;
    ## constraints
    g = zeros(D-1);
    for i = 1:D-1
        g[i] = x[i]-x[i+1]+1e-6;
    end
    h = zeros(1);

    return f, g, h
end

# 31
function SOPWM_for_5_level_Inverters(x) 
    D = length(x)
    ## SOPWM for 5-level Inverters
    m = 0.32;
    s = [1,-1,1,1,-1,1,-1,1,-1,-1,1,-1,1,1,-1,1,-1,1,-1,-1,1,-1,1,1,-1];
    k = [5,7,11,13,17,19,23,25,29,31,35,37,41,43,47,49,53,55,59,61,65,67,71,73,77,79,83,85,91,95,97];
    ## objective function
    f = zeros(2);
    su = 0;
    for j = 1:31
        su2 = 0;
        for l = 1:D
            su2 = su2 + s[l] .* cos(k[j] .* x[l]*pi/180);
        end
        su = su + su2 .^ 2 ./ k[j] .^ 4;
    end
    f[1] = (su) .^ 0.5 ./ (sum(1 ./ k .^ 4)) .^ 0.5;
    f[2] = (sum(s .* cos.(x*pi/180))-m) .^ 2;
    ## constraints
    g = zeros(D-1);
    for i = 1:D-1
        g[i] = x[i]-x[i+1]+1e-6;
    end
    h = zeros(1);
    return f, g, h
end

# 32
function SOPWM_for_7_level_inverters(x)
    D = length(x)
    ## SOPWM for 7-level Inverters
    m = 0.36;
    s = [1,-1,1,1,1,-1,-1,-1,1,1,-1,-1,1,1,1,-1,-1,-1,1,1,-1,-1,1,1,1];
    k = [5,7,11,13,17,19,23,25,29,31,35,37,41,43,47,49,53,55,59,61,65,67,71,73,77,79,83,85,91,95,97];
    ## objective function
    f = zeros(2);
    su = 0;
    for j = 1:31
        su2 = 0;
        for l = 1:D
            su2 = su2 + s[l] .* cos(k[j] .* x[l]*pi/180);
        end
        su = su + su2 .^ 2 ./ k[j] .^ 4;
    end
    f[1] = (su) .^ 0.5 ./ (sum(1 ./ k .^ 4)) .^ 0.5;
    f[2] = (sum(s .* cos.(x*pi/180))-m) .^ 2;
    ## constraints
    g = zeros(D-1);
    for i = 1:D-1
        g[i] = x[i]-x[i+1]+1e-6;
    end
    h = zeros(1);
    return f, g, h
end

# 33
function SOPWM_for_9_level_inverters(x)
    D = length(x)
    ## SOPWM for 9-level Inverters
    m = 0.32;
    s = [1,1,1,1,-1,1,-1,-1,-1,1,-1,-1,1,1,1,1,-1,1,-1,-1,-1,1,-1,-1,1,1,1,1,-1,1];
    k = [5,7,11,13,17,19,23,25,29,31,35,37,41,43,47,49,53,55,59,61,65,67,71,73,77,79,83,85,91,95,97];
    ## objective function
    f = zeros(2);
    su = 0;
    for j = 1:31
        su2 = 0;
        for l = 1:D
            su2 = su2 + s[l] .* cos(k[j] .* x[l]*pi/180);
        end
        su = su + su2 .^ 2 ./ k[j] .^ 4;
    end
    f[1] = (su) .^ 0.5 ./ (sum(1 ./ k .^ 4)) .^ 0.5;
    f[2] = (sum(s .* cos.(x*pi/180))-m) .^ 2;
    ## constraints
    g = zeros(D-1);
    for i = 1:D-1
        g[i] = x[i]-x[i+1]+1e-6;
    end
    h = zeros(1);


    return f, g, h
end

# 34
function SOPWM_for_11_level_inverters(x) 
    D = length(x)
    ## SOPWM for 11-level Inverters
    m = 0.3333;
    s = [1,-1,1,1,1,-1,-1,-1,1,1,1,1,-1,-1,1,-1,-1,-1,1,1,1,1,-1,1,1,-1,-1,1,-1,-1];
    k = [5,7,11,13,17,19,23,25,29,31,35,37,41,43,47,49,53,55,59,61,65,67,71,73,77,79,83,85,91,95,97];
    ## objective function
    f = zeros(2);
    su = 0;
    for j = 1:31
        su2 = 0;
        for l = 1:D
            su2 = su2 + s[l] .* cos(k[j] .* x[l]*pi/180);
        end
        su = su + su2 .^ 2 ./ k[j] .^ 4;
    end
    f[1] = (su) .^ 0.5 ./ (sum(1 ./ k .^ 4)) .^ 0.5;
    f[2] = (sum(s .* cos.(x*pi/180))-m) .^ 2;
    ## constraints
    g = zeros(D-1);
    for i = 1:D-1
        g[i] = x[i]-x[i+1]+1e-6;
    end

    h = zeros(1);
    return f, g, h
end

# 35
function SOPWM_for_13_level_inverters(x) 
    D = length(x)
    ## SOPWM for 13-level Inverters
    m = 0.32;
    s = [1,1,1,-1,1,-1,1,-1,1,1,1,1,-1,-1,-1,-1,1,-1,1,-1,1,1,1,1,-1,-1,-1,1,-1,1];
    k = [5,7,11,13,17,19,23,25,29,31,35,37,41,43,47,49,53,55,59,61,65,67,71,73,77,79,83,85,91,95,97];

    ## objective function
    f = zeros(2);
    su = 0;
    for j = 1:31
        su2 = 0;
        for l = 1:D
            su2 = su2 + s[l] .* cos(k[j] .* x[l]*pi/180);
        end
        su = su + su2 .^ 2 ./ k[j] .^ 4;
    end
    f[1] = (su) .^ 0.5 ./ (sum(1 ./ k .^ 4)) .^ 0.5;
    f[2] = (sum(s .* cos.(x*pi/180))-m) .^ 2;

    ## constraints
    g = zeros(D-1);
    for i = 1:D-1
        g[i] = x[i]-x[i+1]+1e-6;
    end
    h = zeros(1);

    return f, g, h
end

