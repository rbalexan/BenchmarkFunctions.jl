"""
    bartels_conn(X)

Compute the 2-dimensional Bartels-Conn function on sample vector `X`.

The function is usually evaluated on `xᵢ` ∈ [-500, 500] for `i` = 1, 2.
"""
function bartels_conn(X)

    @assert all(length.(X) .== 2) "Sample vector tuples must be length 2."

    y = [Tuple( abs(x[1]^2+x[2]^2+x[1]*x[2]) +
        abs(sin(x[1])) + abs(cos(x[2])) ) for x in X]

    return y

end
