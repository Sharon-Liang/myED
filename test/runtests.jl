using Test
using FiniteTLanczos
using Random; Random.seed!()

@testset "random init test: equal-probablity for N eigen states" begin
      N = 2^10; R = 100
      v = zeros(N)
      for r = 1:R
        v0 = random_init(N)
        v += v0 .* v0
      end
      v = v ./ R * N
      @test isapprox(v, ones(N), rtol = 0.1)
end

