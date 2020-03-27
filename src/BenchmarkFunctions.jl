module BenchmarkFunctions

using Random

# utils
include("attributes.jl")
include("ndgrid.jl")
export attibutes, ndgrid

# 1-dimensional
include("gramacy_lee.jl")
export gramacy_lee

# 2-dimensional
include("himmelblau.jl")
include("mccormick.jl")
export himmelblau, mccormick

# n-dimensional
include("rosenbrock.jl")
export rosenbrock

end
