using Test
using PlaneGeometry
using LinearAlgebra
using Random

RNG = Xoshiro(137)

include("transform.jl")

@testset "sanity checks" begin
    v = Vec2D(0,0)

    @test isapprox(
        norm(v),
        zero(eltype(v)),
    )

    @test eltype(v) == Int
end
