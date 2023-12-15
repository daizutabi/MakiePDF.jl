@testitem "aqua" begin
    using Aqua: Aqua
    Aqua.test_all(PDFMakie; ambiguities=false)
end