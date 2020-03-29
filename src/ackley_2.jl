"""
    ackley_2(X)

Compute the 2-dimensional Ackley No. 2 function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-32, 32] for `i` = 1, 2.
"""
function ackley_2(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple( -200*exp(-0.02*sqrt(x[1]^2+x[2]^2)) ) for x in X]

    return y

end
