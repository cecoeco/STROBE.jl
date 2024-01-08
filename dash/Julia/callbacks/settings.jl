callback!(
    app,
    Output("table-export", "style_header"),
    Output("table-export", "style_cell"),
    Input("slider-headertextsize", "value"),
    Input("slider-celltextsize", "value"),
    Input("dropdown-headertextfont", "value"),
    Input("dropdown-celltextfont", "value"),
    Input("radioitems-horizontal", "value"),
    Input("radioitems-vertical", "value"),
    Input("text-styling-button-bold", "value"),
    Input("text-styling-button-italic", "value"),
    Input("text-styling-button-underline", "value"),
    Input("text-styling-button-strikethrough", "value"),
    Input("fill-color", "value"),
    Input("text-color", "value")
) do headertextsize, celltextsize, headertextfont, celltextfont, horizontal_alignment, vertical_alignment, bold, italic, underline, strikethrough, fillcolor, textcolor
    style_header = Dict(
        "fontSize" => headertextsize,
        "fontFamily" => headertextfont,
        "textAlign" => horizontal_alignment,
        "verticalAlign" => vertical_alignment,
        "backgroundColor" => fillcolor,
        "color" => textcolor,
        "fontWeight" => bold,
        "fontStyle" => italic,
        "textDecoration" => join([underline, strikethrough]," "),
    )
    style_cell = Dict(
        "fontSize" => celltextsize,
        "fontFamily" => celltextfont,
        "textAlign" => horizontal_alignment,
        "verticalAlign" => vertical_alignment,
        "backgroundColor" => fillcolor,
        "color" => textcolor,
        "fontWeight" => bold,
        "fontStyle" => italic,
        "textDecoration" => join([underline, strikethrough], " "),
    )
    return style_header, style_cell
end
