module BenchmarkFunctions

    using Random

    include("attributes.jl")
    include("ndgrid.jl")

    # 1-dimensional
    include("gramacy_lee.jl")

    # 2-dimensional
    include("himmelblau.jl")
    include("mccormick.jl")

    # n-dimensional
    include("rosenbrock.jl")

end
