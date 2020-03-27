using BenchmarkFunctions
using Plots
pyplot()

# plot Gramacy-Lee function
x1 = -0.5:0.001:2.5
X = BenchmarkFunctions.ndgrid((x1,))
y = BenchmarkFunctions.gramacy_lee(X)
plot(getindex.(X, 1), getindex.(y, 1),
        box=:on, xlabel="x", ylabel="y", legend=:none,
        title="Gramacy-Lee function")

# plot Himmelblau function
x1 = x2 = -6:0.1:6
X = ndgrid((x1,x2))
y = himmelblau(X)

surface(getindex.(X, 1), getindex.(X, 2), getindex.(y, 1),
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis_r,
        xlims=(-6,6), ylims=(-6,6), clims=(0,100), box=:on,
        title="Himmelblau function")

contourf(x1, x2, permutedims(reshape(getindex.(y, 1), length(x1), :), [2, 1]),
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis_r,
        xlims=(-6,6), ylims=(-6,6), clims=(0,100), box=:on, levels=200,
        aspect_ratio=:equal, title="Himmelblau function")

# plot McCormick function
x1 = -1.5:0.1:4
x2 = -3:0.1:3
X = ndgrid((x1,x2))
y = mccormick(X)

surface(getindex.(X, 1), getindex.(X, 2), getindex.(y, 1),
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis_r,
        xlims=(-1.5,4), ylims=(-3,3), box=:on, title="McCormick function")

contourf(x1, x2, permutedims(reshape(getindex.(y, 1), length(x1), :), [2, 1]),
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis_r,
        xlims=(-1.5,4), ylims=(-3,3), box=:on, aspect_ratio=:equal,
        title="McCormick function")

# plot Rosenbrock (2D) function
x1 = -2:0.1:2
x2 = -2:0.1:2
X = ndgrid((x1,x2))
y = rosenbrock(X)

surface(getindex.(X, 1), getindex.(X, 2), getindex.(y, 1),
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis_r,
        xlims=(-2,2), ylims=(-2,2), box=:on, title="Rosenbrock function")

contourf(x1, x2, permutedims(reshape(getindex.(y, 1), length(x1), :), [2, 1]),
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis,
        xlims=(-2,2), ylims=(-2,2), box=:on, aspect_ratio=:equal,
        title="Rosenbrock function")
