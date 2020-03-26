"""
    ndgrid(grids)

Create an n-dimensional grid over `grids` -- a tuple of iterables along each dimension.

# Examples
```julia> ndgrid((0:1,))
```
"""
function ndgrid(grids)

    list = vec(collect(Iterators.product(grids...)))
    grid = hcat(list[1]...)

    @showprogress for point in list[2:end]

        grid = vcat(grid, hcat(point...))

    end

    return grid

end
