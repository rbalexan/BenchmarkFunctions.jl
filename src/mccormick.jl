"""
    mccormick(x)

Compute the 2D McCormick function on sample matrix `x`.

The function is usually evaluated on `x₁` ∈ [-1.5, 4] and `x₂` ∈ [-3, 3]
"""
function mccormick(x)

    @assert size(x, 2) == 2 "Sample matrix must be of size (n, 2)."

    x1 = x[:,1]
    x2 = x[:,2]

    y = sin.(x1 + x2) + (x1 - x2).^2 - 1.5*x1 + 2.5*x2 .+ 1

    return y

end
