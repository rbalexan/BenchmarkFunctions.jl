# BenchmarkFunctions.jl
A set of common benchmark functions for testing optimization algorithms in Julia

[![Build Status](https://travis-ci.com/rbalexan/BenchmarkFunctions.jl.svg?branch=master&kill_cache=1)](https://travis-ci.com/rbalexan/BenchmarkFunctions.jl)
[![Coverage Status](https://coveralls.io/repos/github/rbalexan/BenchmarkFunctions.jl/badge.svg?branch=master&kill_cache=1)](https://coveralls.io/github/rbalexan/BenchmarkFunctions.jl?branch=master)

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

## Complicated Benchmark Functions

This package also include some complicated benchmark functions.


### Real-World Multiobjective Constrained Optimization Problems

The Competition on Real-World Multiobjective Constrained Optimization 2021
[(RW-MOP-2021)](https://doi.org/10.1016/j.swevo.2021.100961) presented 50 benchmark functions
from real-world problems for testing multi-objective optimization algorithms.
Those problems are available here.

```
julia> using BenchmarkFunctions

julia> f, conf = get_RW_MOP_problem(2); # problem 2

julia> conf
Dict{Symbol, Any} with 8 entries:
  :xmin     => [0.05, 0.2, 0.2, 0.35, 3.0]
  :xmax     => [0.5, 0.5, 0.6, 0.5, 6.0]
  :n        => 5
  :function => "vibrating_platform"
  :gn       => 5
  :hn       => 0
  :fn       => 2
  :nadir    => [-0.00127461, 318.255]
```

Use `BenchmarkFunctions.NAME_OF_PROBLEMS_RW_MOP_2021` for full list of problems.
