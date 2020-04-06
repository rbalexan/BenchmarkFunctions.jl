"""
    ackley_4(X)
    ackley_4(X, n=3)

Compute the n-dimensional Ackley No. 4 function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-35, 35].
"""
function ackley_4(X; n=2)

    @assert isinteger(n) && n ≥ 2 "n must be an integer greater than or equal to 2."
    @assert all(length.(X) .== n) "Sample vector tuples must be length $n."

    y = [Tuple( sum( [exp(-0.2)*sqrt(x[i]^2 + x[i+1]^2) +
                     3*(cos(2x[i]) + sin(2x[i+1])) for i in 1:n-1] ) ) for x in X]

    return y

end
