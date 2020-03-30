using BenchmarkFunctions
using Test

# 2-dimensional tests
@test isapprox(minimum(ackley_2(ndgrid(-5:0.1:5,-5:0.1:5)))[1], -200., atol=0.1)
@test isapprox(minimum(ackley_3(ndgrid(-5:0.1:5,-5:0.1:5)))[1], -195.629, atol=0.1)
@test isapprox(minimum(adjiman( ndgrid(-1:0.1:2,-1:0.1:1)))[1], -2.02181, atol=0.1)

# n-dimensional tests
@test isapprox(minimum(ackley_1(ndgrid(-5:0.1:5), n=1))[1],     0.,        atol=0.1)
@test isapprox(minimum(ackley_1(ndgrid(-5:0.1:5,-5:0.1:5)))[1], 0.,        atol=0.1)
@test isapprox(minimum(ackley_4(ndgrid(-5:0.1:5,-5:0.1:5)))[1], -4.590101, atol=0.1)
