module MakiePDF

using IJulia
using Makie

Base.showable(::MIME"application/pdf", ::Makie.FigureLike) = true
Base.showable(::MIME"text/html", ::Makie.FigureLike) = false

__init__() = IJulia.register_mime(MIME("application/pdf"))

end
