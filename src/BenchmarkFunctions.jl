module BenchmarkFunctions

using Random
using Plots
using LaTeXStrings

# Classical Problems
# utils
include("ClassicalProblems/utils/utils.jl")
# functions
include("ClassicalProblems/functions/functions.jl")


# CEC Problems
# utils
include("CECProblems/RW-MOP-2021/utils/attributes.jl")
# functions
include("CECProblems/RW-MOP-2021/functions/functions.jl")


end
