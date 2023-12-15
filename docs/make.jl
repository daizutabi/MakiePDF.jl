using MakiePDF
using Documenter

DocMeta.setdocmeta!(MakiePDF, :DocTestSetup, :(using MakiePDF); recursive=true)

makedocs(;
    modules=[MakiePDF],
    authors="daizutabi <daizutabi@gmail.com> and contributors",
    repo="https://github.com/daizutabi/MakiePDF.jl/blob/{commit}{path}#{line}",
    sitename="MakiePDF.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://daizutabi.github.io/MakiePDF.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=["Home" => "index.md"],
)

deploydocs(; repo="github.com/daizutabi/MakiePDF.jl", devbranch="main")
