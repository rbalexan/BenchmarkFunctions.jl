"""
    mccormick(X)

Compute the 2-dimensional McCormick function on sample vector `X`.

The function is usually evaluated on `x₁` ∈ [-1.5, 4] and `x₂` ∈ [-3, 3]
"""
function mccormick(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple(sin(x[1]+x[2]) + (x[1]-x[2])^2 - 1.5*x[1] + 2.5*x[2] + 1) for x in X]

    return y

end
