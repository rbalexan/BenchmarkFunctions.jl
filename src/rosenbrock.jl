"""
    rosenbrock(X, n)

Compute the n-dimensional Rosenbrock function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-5, 10] or `xᵢ` ∈ [-2.048, -2.048]
"""
function rosenbrock(X; n=2::Int)

    @assert isinteger(n) && n ≥ 2 "n must be an integer greater than or equal to 2."
    @assert all(length.(X) .== n) "Sample vector tuples must be length $n."

    y = [Tuple(sum([100*(x[i+1]-x[i]^2)^2 + (x[i]-1)^2 for i in 1:n-1])) for x in X]

    return y

end
