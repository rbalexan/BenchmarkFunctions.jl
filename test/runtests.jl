using BenchmarkFunctions
using Test

# 1-dimensional tests
@test isapprox(minimum(gramacy_lee( ndgrid(-0.5:0.01:2.5)))[1],     -2.84962, atol=0.1)

# 2-dimensional tests
@test isapprox(minimum(ackley_2(    ndgrid(-5  :0.1:5,-5:0.1:5)))[1], -200.,    atol=0.1)
@test isapprox(minimum(ackley_3(    ndgrid(-5  :0.1:5,-5:0.1:5)))[1], -195.629, atol=0.1)
@test isapprox(minimum(adjiman(     ndgrid(-1  :0.1:2,-1:0.1:1)))[1], -2.02181, atol=0.1)
@test isapprox(minimum(bartels_conn(ndgrid(-4  :0.1:4,-4:0.1:4)))[1],  1,       atol=0.1)
# himmelblau has 4 min
@test isapprox(minimum(mccormick(   ndgrid(-1.5:0.1:4,-3:0.1:3)))[1], -1.9133,  atol=0.1)

# n-dimensional tests
@test isapprox(minimum(ackley_1(    ndgrid( -5:0.1: 5), n=1))[1],        0.,       atol=0.1)
@test isapprox(minimum(ackley_1(    ndgrid( -5:0.1: 5, -5:0.1: 5)))[1],  0.,       atol=0.1)
@test isapprox(minimum(ackley_4(    ndgrid( -5:0.1: 5, -5:0.1: 5)))[1], -4.590101, atol=0.1)
@test isapprox(minimum(alpine_1(    ndgrid(-10:0.1:10), n=1))[1],        0.,       atol=0.1)
@test isapprox(minimum(alpine_1(    ndgrid(-10:0.1:10,-10:0.1:10)))[1],  0.,       atol=0.1)
@test isapprox(minimum(alpine_2(    ndgrid(  0:0.1:10), n=1))[1],       -2.808^1,  atol=0.1)
@test isapprox(minimum(alpine_2(    ndgrid(  0:0.1:10,  0:0.1:10)))[1], -2.808^2,  atol=0.1)
@test isapprox(minimum(rosenbrock(  ndgrid( -2:0.1: 2, -2:0.1: 2)))[1],  0,        atol=0.1)
@test isapprox(minimum(rosenbrock(  ndgrid( -2:0.1: 2, -2:0.1: 2,-2:0.1:2), n=3))[1], 0,         atol=0.1)
