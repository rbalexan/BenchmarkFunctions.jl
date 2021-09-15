"""
    brent(X)

Compute the 2-dimensional Brent function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-10, 10] for i = 1, 2.
"""
function brent(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple( (x[1]+10)^2 + (x[2]+10)^2 + exp(-x[1]^2 - x[2]^2) ) for x in X]

    return y

end
