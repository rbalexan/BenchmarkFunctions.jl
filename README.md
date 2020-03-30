# BenchmarkFunctions.jl
A set of common benchmark functions for testing optimization algorithms in Julia

[![Build Status](https://travis-ci.com/rbalexan/BenchmarkFunctions.jl.svg?branch=master)](https://travis-ci.com/rbalexan/BenchmarkFunctions.jl)
[![Coverage Status](https://coveralls.io/repos/github/rbalexan/BenchmarkFunctions.jl/badge.svg?branch=master)](https://coveralls.io/github/rbalexan/BenchmarkFunction.jl?branch=master)

![Surface and contour plots of the Himmelblau function](https://github.com/rbalexan/BenchmarkFunctions.jl/blob/master/plots/2d_himmelblau.svg)

## Getting Started
To add the package, enter the following into the REPL:
```julia
julia> using Pkg
julia> Pkg.add("BenchmarkFunctions")
```

A simple example for creating a grid and evaluating a benchmark function is: 
```julia
using BenchmarkFunctions

X = ndgrid(-4:0.1:4,-4:0.1:4)
y = himmelblau(X)
```

To recreate the above plot: 
```julia
using BenchmarkFunctions

plot("himmelblau", -4:0.1:4, -4:0.1:4)
```
