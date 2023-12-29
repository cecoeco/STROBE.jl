using DataFrames
using PlotlyJS
using Colors

MIN_X::Int64 = 0
MAX_X::Int64 = 1200
MIN_Y::Int64 = 0
MAX_Y::Int64 = 600

function table(
    data::DataFrame = missing,
    transparent_bg::Bool = false,
    textsize = nothing,
    textfont = nothing,
    textcolor = nothing,
    fillcolor = nothing,
    textalignment = [nothing, nothing],
    linecolor = "black",
    headertextsize::Number = 17,
    headertextfont::AbstractString = "Helvetica",
    headertextcolor = "black",
    headertextalignment::Vector{String} = ["left", "center"],
    headerfillcolor = "lightgray",
    celltextsize::Number = 17,
    celltextfont::AbstractString = "Helvetica",
    celltextcolor = "black",
    cellfillcolor = "white",
    celltextalignment::Vector{String} = ["left", "center"],
)

    PlotlyJS.plot(
        PlotlyJS.table(
            header = attr(
                values = names(data),
                line_color = linecolor,
                fill_color = if fillcolor === nothing
                    headerfillcolor
                else
                    fillcolor
                end,
                align = if textalignment === nothing
                    headertextalignment
                else
                    textalignment
                end,
                font = attr(
                    color = if textcolor === nothing
                        headertextcolor
                    else
                        textcolor
                    end,
                    font_family = if textfont === nothing
                        headertextfont
                    else
                        textfont
                    end,
                    size = if textsize === nothing
                        headertextsize
                    else
                        textsize
                    end,
                )
            ),
            cells = attr(
                values = [data for data in eachcol(data)],
                line_color = linecolor,
                fill_color = if fillcolor === nothing
                    cellfillcolor
                else
                    fillcolor
                end,
                align = if textalignment === nothing
                    celltextalignment
                else
                    textalignment
                end,
                font = attr(
                    color = if textcolor === nothing
                        celltextcolor
                    else
                        textcolor
                    end,
                    font_family = if textfont === nothing
                        celltextfont
                    else
                        textfont
                    end,
                    size = if textsize === nothing
                        celltextsize
                    else
                        textsize
                    end,
                )
            )
        ),
        PlotlyJS.Layout(
            xaxis = attr(
                range = [MIN_X, MAX_X],
                showgrid = false,
            ),
            yaxis = attr(
                range = [MIN_Y, MAX_Y],
                showgrid = false,
            ),
            plot_bgcolor = if transparent_bg == true
                RGBA(0, 0, 0, 0)
            else
                RGBA(1, 1, 1, 1)
            end
        )
    )
end