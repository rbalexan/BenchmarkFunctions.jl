"""
    ackley_1(X)
    ackley_1(X, n=3)

Compute the n-dimensional Ackley function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-32,32].
"""
function ackley_1(X; n=2::Int, a=20.::Real, b=0.02::Real, c=2π::Real)

    @assert isinteger(n) && n ≥ 1 "n must be an integer greater than or equal to 1."
    @assert all(length.(X) .== n) "Sample vector tuples must be length $n."

    y = [Tuple( -a*exp(-b*sqrt(1/n*sum([x[i]^2 for i in 1:n]))) -
                 exp(1/n*sum([cos(c*x[i]) for i in 1:n])) + a + exp(1) ) for x in X]

    return y

end
