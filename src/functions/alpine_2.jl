"""
    alpine_2(X)
    alpine_2(X, n=3)

Compute the n-dimensional Alpine No. 2 function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [0, 10].
"""
function alpine_2(X; n=2)

    @assert isinteger(n) && n ≥ 1 "n must be an integer greater than or equal to 1."
    @assert all(length.(X) .== n) "Sample vector tuples must be length $n."

    y = [Tuple( -prod( [sqrt(x[i])*sin(x[i]) for i in 1:n] ) ) for x in X]

    return y

end
