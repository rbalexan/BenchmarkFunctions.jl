"""
    bird(X)

Compute the 2-dimensional Bird function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-2π, 2π] for `i` = 1, 2.
"""
function bird(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple( sin(x[1])*exp((1-cos(x[2]))^2) + cos(x[2])*exp((1-sin(x[1]))^2) +
                (x[1]-x[2])^2 ) for x in X]

    return y

end
