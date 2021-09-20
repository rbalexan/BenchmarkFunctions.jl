# 1-dimensional
include("gramacy_lee.jl")
export gramacy_lee

# 2-dimensional
include("adjiman.jl")
include("ackley_2.jl")
include("ackley_3.jl")
include("bartels_conn.jl")
include("beale.jl")
include("bird.jl")
include("bohachevsky_1.jl")
include("bohachevsky_2.jl")
include("bohachevsky_3.jl")
include("booth.jl")
include("brent.jl")
include("deckkers_aarts.jl")
include("himmelblau.jl")
include("mccormick.jl")
export adjiman, ackley_2, ackley_3, bartels_conn, beale, bird, bohachevsky_1,
        bohachevsky_2, bohachevsky_3, booth, brent, deckkers_aarts, himmelblau,
        mccormick

# n-dimensional
include("ackley_1.jl")
include("ackley_4.jl")
include("alpine_1.jl")
include("alpine_2.jl")
include("brown.jl")
include("rosenbrock.jl")
export ackley_1, ackley_4, alpine_1, alpine_2, brown, rosenbrock
