@testitem "mime" begin
    using IJulia
    @test MIME("application/pdf") in IJulia.ijulia_mime_types
end

@testitem "showable" begin
    using CairoMakie
    @test showable(MIME("application/pdf"), Figure())
    obj = lines(1:10)
    @test showable(MIME("application/pdf"), obj)
    fig, ax, plt = obj
    @test showable(MIME("application/pdf"), fig)
    @test !showable(MIME("application/pdf"), ax)
    @test !showable(MIME("application/pdf"), plt)
end

@testitem "display_dict" begin
    using CairoMakie
    using IJulia
    dict = IJulia.display_dict(Figure())
    @test length(dict) >= 2
    @test haskey(dict, "image/png")
    @test startswith(dict["image/png"], "iVBO")
    @test haskey(dict, "application/pdf")
    @test startswith(dict["application/pdf"], "JVBE")
end