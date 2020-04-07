"""
    brown(X)
    brown(X, n=3)

Compute the n-dimensional Brown function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-1, 4].
"""
function brown(X; n=2::Int)

    @assert isinteger(n) && n ≥ 2 "n must be an integer greater than or equal to 2."
    @assert all(length.(X) .== n) "Sample vector tuples must be length $n."

    y = [Tuple( sum( [(x[i]^2)^(x[i+1]^2 + 1) + (x[i+1]^2)^(x[i]^2 + 1) for i in 1:n-1] ) ) for x in X]

    return y

end
