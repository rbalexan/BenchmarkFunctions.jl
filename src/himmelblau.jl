"""
    himmelblau(X)

Compute the 2-dimensional Himmelblau function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-6, 6] for `i` = 1, 2.
"""
function himmelblau(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple((x[1]^2+x[2]-11)^2 + (x[1]+x[2]^2-7)^2) for x in X]

    return y

end
