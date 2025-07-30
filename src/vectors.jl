struct Vec2D{T<:Real}
    x::T
    y::T
end

LinearAlgebra.norm(v::Vec2D) = sqrt(v.x^2 + v.y^2)

Base.eltype(v::Vec2D{T}) where T = T
