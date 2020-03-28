module BenchmarkFunctions

using Random
using Plots
using LaTeXStrings

# utils
include("attributes.jl")
include("ndgrid.jl")
include("plot.jl")
export attributes, ndgrid, plot

# 1-dimensional
include("gramacy_lee.jl")
export gramacy_lee

# 2-dimensional
include("adjiman.jl")
include("bartels_conn.jl")
include("himmelblau.jl")
include("mccormick.jl")
export adjiman, bartels_conn, himmelblau, mccormick

# n-dimensional
include("ackley.jl")
include("rosenbrock.jl")
export ackley, rosenbrock

end
