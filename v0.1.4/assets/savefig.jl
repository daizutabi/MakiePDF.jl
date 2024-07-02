using Base64
using JSON3

json_string = read("plot.ipynb", String)
nb = JSON3.read(json_string)
data = nb.cells[1].outputs[1].data["application/pdf"]

open("plot.pdf", "w") do f
    write(f, base64decode(data))
end