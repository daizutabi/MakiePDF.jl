module MakiePDF

using IJulia
using Makie

Base.showable(::MIME"application/pdf", ::Makie.FigureLike) = true

__init__() = IJulia.register_mime(MIME("application/pdf"))

end
