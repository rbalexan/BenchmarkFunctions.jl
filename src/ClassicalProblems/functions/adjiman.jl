"""
    adjiman(X)

Compute the 2-dimensional Adjiman function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-1, 1] for `i` = 1, 2. Has specific constraints.
"""
function adjiman(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple( cos(x[1])*sin(x[2]) - x[1]/(x[2]^2+1) ) for x in X]

    return y

end
