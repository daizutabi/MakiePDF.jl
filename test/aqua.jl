@testitem "aqua" begin
    using Aqua: Aqua
    Aqua.test_all(MakiePDF; ambiguities=false)
end