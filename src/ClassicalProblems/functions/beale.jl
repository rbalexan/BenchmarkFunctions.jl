"""
    beale(X)

Compute the 2-dimensional Beale function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-4.5, 4.5] for `i` = 1, 2.
"""
function beale(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple( (1.5-x[1]+x[1]*x[2])^2 + (2.25-x[1]+x[1]*x[2]^2)^2 +
                (2.625-x[1]+x[1]*x[2]^3)^2 ) for x in X]

    return y

end
