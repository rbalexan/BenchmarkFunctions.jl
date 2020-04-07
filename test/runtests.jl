using BenchmarkFunctions
using Test

@testset "1-dimensional function minima" begin
    @test isapprox(minimum(gramacy_lee(   ndgrid(-0.5:0.01:2.5)))[1],          -2.84962, atol=0.1)
end

@testset "2-dimensional function minima" begin
    @test isapprox(minimum(ackley_2(      ndgrid(-5  :0.1:5 ,-5 :0.1:5 )))[1], -200.,    atol=0.1)
    @test isapprox(minimum(ackley_3(      ndgrid(-5  :0.1:5 ,-5 :0.1:5 )))[1], -195.629, atol=0.1)
    @test isapprox(minimum(adjiman(       ndgrid(-1  :0.1:2 ,-1 :0.1:1 )))[1], -2.02181, atol=0.1)
    @test isapprox(minimum(bartels_conn(  ndgrid(-4  :0.1:4 ,-4 :0.1:4 )))[1],  1,       atol=0.1)
    @test isapprox(minimum(beale(         ndgrid(-4  :0.1:4 ,-4 :0.1:4 )))[1],  0.,      atol=0.1)
    @test isapprox(minimum(bird(          ndgrid(-2π :0.05:2π,-2π:0.05:2π)))[1],-106.764,atol=0.1)
    @test isapprox(minimum(bohachevsky_1( ndgrid(-4  :0.1:4 ,-4 :0.1:4 )))[1],  0.,      atol=0.1)
    @test isapprox(minimum(bohachevsky_2( ndgrid(-4  :0.1:4 ,-4 :0.1:4 )))[1],  0.,      atol=0.1)
    @test isapprox(minimum(bohachevsky_3( ndgrid(-4  :0.1:4 ,-4 :0.1:4 )))[1],  0.,      atol=0.1)
    @test isapprox(minimum(booth(         ndgrid(-10 :0.1:10,-10:0.1:10)))[1],  0.,      atol=0.1)
    @test isapprox(minimum(brent(         ndgrid(-15 :0.1:-5,-15:0.1:-5)))[1], exp(-200),atol=0.1)
    @test isapprox(minimum(deckkers_aarts(ndgrid(-20 :0.4:20,-20:0.4:20)))[1], -24771,   atol=1e2)
    @test isapprox(minimum(himmelblau(    ndgrid(-4  :0.1:4 ,-4 :0.1:4 )))[1],  0.,      atol=0.1)
    @test isapprox(minimum(mccormick(     ndgrid(-1.5:0.1:4 ,-3 :0.1:3 )))[1], -1.9133,  atol=0.1)
end

@testset "n-dimensional function minima" begin
    @test isapprox(minimum(ackley_1(      ndgrid( -5:0.1: 5), n=1))[1],        0.,       atol=0.1)
    @test isapprox(minimum(ackley_1(      ndgrid( -5:0.1: 5, -5:0.1: 5)))[1],  0.,       atol=0.1)
    @test isapprox(minimum(ackley_4(      ndgrid( -5:0.1: 5, -5:0.1: 5)))[1], -4.590101, atol=0.1)
    @test isapprox(minimum(alpine_1(      ndgrid(-10:0.1:10), n=1))[1],        0.,       atol=0.1)
    @test isapprox(minimum(alpine_1(      ndgrid(-10:0.1:10,-10:0.1:10)))[1],  0.,       atol=0.1)
    @test isapprox(minimum(alpine_2(      ndgrid(  0:0.1:10), n=1))[1],       -2.808^1,  atol=0.1)
    @test isapprox(minimum(alpine_2(      ndgrid(  0:0.1:10,  0:0.1:10)))[1], -2.808^2,  atol=0.1)
    @test isapprox(minimum(brown(         ndgrid( -1:0.1: 4, -1:0.1: 4)))[1],  0.,       atol=0.1)
    @test isapprox(minimum(rosenbrock(    ndgrid( -2:0.1: 2, -2:0.1: 2)))[1],  0.,       atol=0.1)
    @test isapprox(minimum(rosenbrock(    ndgrid( -2:0.1: 2, -2:0.1: 2,-2:0.1:2), n=3))[1], 0., atol=0.1)
end

@testset "Attribute output" begin
    original_stdout = stdout;
    (read_pipe, write_pipe) = redirect_stdout();
    attributes()
    redirect_stdout(original_stdout);
    close(write_pipe)
    @test read(read_pipe, String) == "\nAttribute keywords: \n - dimensionality:" *
        "    1d, 2d, 3d, nd\n - continuity:        continuous, discontinuous\n - " *
        "differentiability: differentiable, non-differentiable\n - convexity:    " *
        "     convex, non-convex\n - modality:          unimodal, multimodal\n - " *
        "separability:      separable, non-separable\n - other:             " *
        "parametric, random\n"

    original_stdout = stdout;
    (read_pipe, write_pipe) = redirect_stdout();
    attributes("ackley_1")
    redirect_stdout(original_stdout);
    close(write_pipe)
    @test read(read_pipe, String) == "\nAttributes of `ackley_1` function:\n" *
        " - `nd`\n - `multimodal`\n - `separable`\n - `differentiable`\n" *
        " - `continuous`\n - `non-convex`\n"
end
