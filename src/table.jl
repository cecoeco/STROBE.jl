using DataFrames
using PlotlyJS
using Colors

MIN_X::Int64 = 0
MAX_X::Int64 = 1200
MIN_Y::Int64 = 0
MAX_Y::Int64 = 600

function table(
    data = missing,
    transparent_bg::Bool = false,
    textsize = nothing,
    textfont = nothing,
    textcolor = nothing,
    fillcolor = nothing,
    textalignment = [nothing, nothing],
    linecolor = nothing,
    headertextsize::Number = 17,
    headertextfont::AbstractString = "Helvetica",
    headertextcolor = "black",
    headertextalignment::Vector{String} = ["left", "center"],
    headerlinecolor = "black",
    headerfillcolor = "lightgray",
    celltextsize::Number = 17,
    celltextfont::AbstractString = "Helvetica",
    celltextcolor = "black",
    cellfillcolor = "white",
    celltextalignment::Vector{String} = ["left", "center"],
    celllinecolor = "black",
)
    PlotlyJS.plot(
        PlotlyJS.table(
            header = attr(
                values = names(data),
                line_color = lincolor === nothing ? headerlinecolor : linecolor,
                fill_color = fillcolor === nothing ? headerfillcolor : fillcolor,
                align = textalignment === nothing ? headertextalignment : textalignment,
                font = attr(
                    color = textcolor === nothing ? headertextcolor : textcolor,
                    font_family = textfont === nothing ? headertextfont : textfont,
                    size = textsize === nothing ? headertextsize : textsize
                )
            ),
            cells = attr(
                values = [data for data in eachcol(data)],
                line_color = lincolor === nothing ? celllinecolor : linecolor,
                fill_color = fillcolor === nothing ? cellfillcolor : fillcolor,
                align = textalignment === nothing ? celltextalignment : textalignment,
                font = attr(
                    color = textcolor === nothing ? celltextcolor : textcolor,
                    font_family = textfont === nothing ? celltextfont : textfont,
                    size = textsize === nothing ? celltextsize : textsize
                )
            )
        ),
        PlotlyJS.Layout(
            xaxis = attr(range = [MIN_X, MAX_X], showgrid = false),
            yaxis = attr(range = [MIN_Y, MAX_Y], showgrid = false),
            plot_bgcolor = transparent_bg == true ? RGBA(0, 0, 0, 0) : RGBA(1, 1, 1, 1)
        )
    )
end
