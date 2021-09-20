"""
    alpine_1(X)
    alpine_1(X, n=3)

Compute the n-dimensional Alpine No. 1 function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-10, 10].
"""
function alpine_1(X; n=2)

    @assert isinteger(n) && n ≥ 1 "n must be an integer greater than or equal to 1."
    @assert all(length.(X) .== n) "Sample vector tuples must be length $n."

    y = [Tuple( sum( [abs(x[i]*sin(x[i]) + 0.1x[i]) for i in 1:n] ) ) for x in X]

    return y

end
