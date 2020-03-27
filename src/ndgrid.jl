"""
    ndgrid(grids...)

Create an n-dimensional grid over `grids` -- iterables along each dimension.

# Examples
```jldoctest
julia> ndgrid(0:1)
2-element Array{Tuple{Int64},1}:
 (0,)
 (1,)
```

```jldoctest
julia> ndgrid((0:1,0:1))
4-element Array{Tuple{Int64,Int64},1}:
 (0, 0)
 (1, 0)
 (0, 1)
 (1, 1)
 ```
"""
function ndgrid(grids...)

    return vec(collect(Iterators.product(grids...)))

end
