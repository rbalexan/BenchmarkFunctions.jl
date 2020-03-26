using ProgressMeter
using Plots; pyplot()

include("ndgrid.jl")

include("gramacy_lee.jl")
include("himmelblau.jl")
include("mccormick.jl")

# plot Gramacy-Lee function
x1 = -0.5:0.001:2.5
x = ndgrid((x1,))
y = gramacy_lee(x)
plot(x, y, box=:on, xlabel="x", ylabel="y", legend=:none,
    title="Gramacy-Lee function")

# plot Himmelblau function
x1 = x2 = -6:0.1:6
x = ndgrid((x1,x2))
y = himmelblau(x)

surface(x[:,1], x[:,2], y,
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis_r,
        xlims=(-6,6), ylims=(-6,6), clims=(0,100), box=:on,
        title="Himmelblau function")

contourf(x1, x2, permutedims(reshape(y, length(x1), :), [2, 1]),
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis_r,
        xlims=(-6,6), ylims=(-6,6), clims=(0,100), box=:on, levels=200,
        aspect_ratio=:equal, title="Himmelblau function")

# plot McCormick function
x1 = -1.5:0.1:4
x2 = -3:0.1:3
x = ndgrid((x1,x2))
y = mccormick(x)

surface(x[:,1], x[:,2], y,
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis_r,
        xlims=(-1.5,4), ylims=(-3,3), box=:on, title="McCormick function")

contourf(x1, x2, permutedims(reshape(y, length(x1), :), [2, 1]),
        xlabel="x1", ylabel="x2", zlabel="y", color=:viridis_r,
        xlims=(-1.5,4), ylims=(-3,3), box=:on, aspect_ratio=:equal,
        title="McCormick function")
