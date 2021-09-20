"""
    gramacy_lee(X)

Compute the 1-dimensional Gramacy-Lee function on sample vector `X`.

The function is usually evaluated on `x` ∈ [-0.5, 2.5].
"""
function gramacy_lee(X)

    @assert all(length.(X) .== 1) "Sample vector tuples must be length 1."

    y = [Tuple(sin(10π*x[1])/(2x[1]) + (x[1]-1)^4) for x in X]

    return y

end
