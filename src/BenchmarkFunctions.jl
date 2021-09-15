module BenchmarkFunctions

using Random
using Plots
using LaTeXStrings

# Classical Problems
# utils
include("ClassicalProblems/utils/utils.jl")
# functions
include("ClassicalProblems/functions/functions.jl")


include("CECProblems/RW-MOP-2021/functions/functions.jl")
#include("CECProblems/RW-MOP-2021/utils/attributes.jl")

# CEC Problems

end
