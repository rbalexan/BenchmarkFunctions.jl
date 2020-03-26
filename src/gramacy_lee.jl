"""
    gramacy_lee(x)

Compute the 1D Gramacy-Lee function on sample matrix `x`.

The function is usually evaluated on `x` ∈ [-0.5, 2.5].
"""
function gramacy_lee(x)

    @assert size(x, 2) == 1 "Sample matrix must be of size (n, 1)."

    y = sin.(10π*x)./(2x) + (x.-1).^4

    return y

end
