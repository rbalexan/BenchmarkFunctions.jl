module BenchmarkFunctions

using Random

# utils
include("attributes.jl")
include("ndgrid.jl")
export attributes, ndgrid

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
