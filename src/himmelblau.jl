"""
    himmelblau(x)

Compute the 2D Himmelblau function on sample matrix `x`.

The function is usually evaluated on `xᵢ` ∈ [-6, 6] for `i` = 1, 2.
"""
function himmelblau(x)

    @assert size(x, 2) == 2 "Sample matrix must be of size (n, 2)."

    x1 = x[:,1]
    x2 = x[:,2]

    y = (x1.^2 + x2 .- 11).^2 + (x1 + x2.^2 .- 7).^2

    return y

end
