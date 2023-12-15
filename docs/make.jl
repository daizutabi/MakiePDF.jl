using PDFMakie
using Documenter

DocMeta.setdocmeta!(PDFMakie, :DocTestSetup, :(using PDFMakie); recursive=true)

makedocs(;
    modules=[PDFMakie],
    authors="daizutabi <daizutabi@gmail.com> and contributors",
    repo="https://github.com/daizutabi/PDFMakie.jl/blob/{commit}{path}#{line}",
    sitename="PDFMakie.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://daizutabi.github.io/PDFMakie.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/daizutabi/PDFMakie.jl",
    devbranch="main",
)
