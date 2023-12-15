using PDFMakie
using Test
using Aqua

@testset "PDFMakie.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(PDFMakie; ambiguities = false,)
    end
    # Write your tests here.
end
