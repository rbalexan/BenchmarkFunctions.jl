function Plots.plot(benchmarkFunctionName::String, grids...)

    @assert length(grids) in Set([1, 2]) "Plotting function is defined only
    for 1-dimensional and 2-dimensional grids."

    benchmarkFunction = Symbol(benchmarkFunctionName)
    benchmarkFunctionName = uppercasefirst(benchmarkFunctionName)
    benchmarkFunctionName = replace(benchmarkFunctionName, "_" => "-")

    f = getfield(Main, benchmarkFunction)

    X = ndgrid(grids...)

    if length(grids) == 1

        try
            global y = f(X)
        catch
            global y = f(X, n=1)
        end

        plot(getindex.(X, 1), getindex.(y, 1),
             box=:on, xlabel=L"x_1", ylabel=L"y", legend=:none,
             title=benchmarkFunctionName * " Function")

    elseif length(grids) == 2

        try
            global y = f(X)
        catch
            global y = f(X, n=2)
        end

        surface(getindex.(X, 1), getindex.(X, 2), getindex.(y, 1),
                xlabel=L"x_1", ylabel=L"x_2", zlabel=L"y", color=:viridis_r,
                box=:on, colorbar=false, title=(benchmarkFunctionName * " Function"),
                layout=grid(1,2), subplot=1, size=(1000,400))

        contourf!(grids[1], grids[2], permutedims(reshape(getindex.(y, 1), length(grids[1]), :), [2, 1]),
                xlabel=L"x_1", ylabel=L"x_2", color=:viridis_r,
                xlims=(minimum(grids[1]), maximum(grids[1])),
                ylims=(minimum(grids[2]), maximum(grids[2])),
                box=:on, aspect_ratio=:equal,
                title=benchmarkFunctionName * " Function", subplot=2)

    end

end
