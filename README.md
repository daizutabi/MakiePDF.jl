# MakiePDF

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://daizutabi.github.io/MakiePDF.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://daizutabi.github.io/MakiePDF.jl/dev/)
[![Build Status](https://github.com/daizutabi/MakiePDF.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/daizutabi/MakiePDF.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/daizutabi/MakiePDF.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/daizutabi/MakiePDF.jl)
[![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

MakiePDF is a simple package for embedding PDF images in Jupyter notebooks.

## Usage

In a Jupyter notebook (`plot.ipynb`), you can plot any figures with CairoMakie.

![img](samples/notebook.png)

PNG images are displayed on screen, while PDF images are embedded in the notebook.

Then, PDF images can be extracted from the notebook and saved as image files.
For example,

```julia
using Base64
using JSON3

json_string = read("plot.ipynb", String)
nb = JSON3.read(json_string)
data = nb.cells[1].outputs[1].data["application/pdf"]

open("plot.pdf", "w") do f
    write(f, base64decode(data))
end
```

Saved images can be used in documentation processors such as Microsoft Word or LaTeX.
