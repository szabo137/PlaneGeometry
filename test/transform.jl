

@testset "transform" begin

    v = Vec2D(rand(RNG,2)...)
    t = Affine(2*pi*rand(RNG); scale = 1.0)

    v_transformed = transform(t,v)

    @test isapprox(
        norm(v),
        norm(v_transformed)
    )
end
