abstract type AbstractTransformations end

# currently supports only rotation
struct Affine{T<:Real} <: AbstractTransformations 
    theta::T
    scale::T

    function Affine(theta::T; scale::T = one(T)) where T
        new{T}(theta,scale)
    end
end

Base.eltype(::Affine{T}) where T = T

function transform(t::Affine, v::Vec2D)
    sth, cth = sincos(t.theta)
    s = t.scale
    v = Vec2D(
        s*(cth*v.x - sth*v.y),
        s*(sth*v.x + cth*v.y),
    )
    return v
end
