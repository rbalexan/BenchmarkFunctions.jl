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
    println(" - separability:      separable, non-separable")
    #println(" - application:       mechanics, chemistry, process-design-and-synthesis, power-electronics, power-systems")
    println(" - other:             parametric, random")

    return

end


functionDict = Dict("gramacy_lee"   => Set(["1d", "continuous", "differentiable",     "non-convex", "multimodal"]),
                    "adjiman"       => Set(["2d", "continuous", "differentiable",     "non-convex", "multimodal", "non-separable"]),
                    "ackley_2"      => Set(["2d", "continuous", "differentiable",     "convex",     "unimodal",   "non-separable"]),
                    "ackley_3"      => Set(["2d", "continuous", "differentiable",     "non-convex", "multimodal", "non-separable"]),
                    "bartels_conn"  => Set(["2d", "continuous", "non-differentiable", "non-convex", "multimodal", "non-separable"]),
                    "beale"         => Set(["2d", "continuous", "differentiable",     "non-convex", "unimodal",   "non-separable"]),
                    "bird"          => Set(["2d", "continuous", "differentiable",     "non-convex", "multimodal", "non-separable"]),
                    "bohachevsky_1" => Set(["2d", "continuous", "differentiable",     "convex",     "unimodal",   "separable"]),
                    "bohachevsky_2" => Set(["2d", "continuous", "differentiable",     "non-convex", "multimodal", "non-separable"]),
                    "bohachevsky_3" => Set(["2d", "continuous", "differentiable",     "non-convex", "multimodal", "non-separable"]),
                    "booth"         => Set(["2d", "continuous", "differentiable",     "convex",     "unimodal",   "non-separable"]),
                    "brent"         => Set(["2d", "continuous", "differentiable",     "convex",     "unimodal",   "non-separable"]),
                    "deckkers_aarts"=> Set(["2d", "continuous", "differentiable",     "non-convex", "multimodal", "non-separable"]),
                    "himmelblau"    => Set(["2d", "continuous", "differentiable",     "non-convex", "multimodal", "separable"]),
                    "mccormick"     => Set(["2d", "continuous", "differentiable",     "convex",     "multimodal", "separable"]),
                    "ackley_1"      => Set(["nd", "continuous", "differentiable",     "non-convex", "multimodal", "separable"]),
                    "ackley_4"      => Set(["nd", "continuous", "differentiable",     "non-convex", "multimodal", "non-separable"]),
                    "alpine_1"      => Set(["nd", "continuous", "non-differentiable", "non-convex", "multimodal", "separable"]),
                    "alpine_2"      => Set(["nd", "continuous", "differentiable",     "non-convex", "multimodal", "separable"]),
                    "brown"         => Set(["nd", "continuous", "differentiable",     "convex",     "unimodal",   "non-separable"]),
                    "rosenbrock"    => Set(["nd", "continuous", "differentiable",     "non-convex", "multimodal", "non-separable"]))

function attributes(string::AbstractString)

    if string in keys(functionDict)

        functionAttributes = functionDict[string]
        println("\nAttributes of `" * string * "` function:")

        for attribute in functionAttributes
            println(" - `" * attribute * "`")
        end

    elseif string in union(values(functionDict)...)

        # do reverse lookup by attribute
        functionsWithAttribute = filter(p -> (string in p.second), functionDict)

        println("\nFunctions with `" * string * "` attribute:")

        for functionWithAttribute in functionsWithAttribute

            functionName = functionWithAttribute.first
            println(" - `" * functionName * "`")

        end

    else

        @error "Not a valid function or attribute."

    end

    return

end
