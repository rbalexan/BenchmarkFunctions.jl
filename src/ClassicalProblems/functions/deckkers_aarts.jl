"""
    deckkers_aarts(X)

Compute the 2-dimensional Deckkers-Aarts function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-20, 20] for i = 1, 2.
"""
function deckkers_aarts(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple( 1e5*x[1]^2 + x[2]^2 - (x[1]^2+x[2]^2)^2 +
                1e-5*(x[1]^2+x[2]^2)^4 ) for x in X]

    return y

end
