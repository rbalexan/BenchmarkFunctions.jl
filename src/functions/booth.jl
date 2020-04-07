"""
    booth(X)

Compute the 2-dimensional Booth function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-10, 10] for `i` = 1, 2.
"""
function booth(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple( (x[1]+2x[2]-7)^2 + (2x[1]+x[2]-5)^2 ) for x in X]

    return y

end
