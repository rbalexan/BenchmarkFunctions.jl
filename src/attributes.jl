"""
    attributes(; string)

Display either:
- a general list of attributes
- a list of attributes for a benchmark function
- a list of benchmark functions with that attribute

# Examples

"""
function attributes()

    println("\nAttribute keywords: ")
    println(" - dimensionality:    1d, 2d, 3d, nd")
    println(" - continuity:        continuous, discontinuous")
    println(" - differentiability: differentiable, non-differentiable")
    println(" - convexity:         convex, non-convex")
    println(" - modality:          unimodal, multimodal")
    println(" - other:             separable, parametric, random")

    return

end

function attributes(string::AbstractString)

    # use Dictionary or Set mapping, get keys, format properly

    if string == "himmelblau"

        println("\nHimmelblau function")
        println(" - 2d, continuous, differentiable, non-convex, multimodal")

    end

    return

end
