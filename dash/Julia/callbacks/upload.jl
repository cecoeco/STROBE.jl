function parse_contents(contents, filename, date)
    content_type, content_string = split(contents, ',')
    decoded = base64decode(content_string)
    df = DataFrame()
    try
        if occursin("csv", filename)
            str = String(decoded)
            df = CSV.read(IOBuffer(str), DataFrame)
        end
    catch e
        print(e)
        return html_div(["There was an error processing this file."])
    end
    return html_div(
        children = [
            html_h5(filename),
            html_h6(Libc.strftime(date)),
            dash_datatable(
                id = "table-export",
                data = [Dict(pairs(NamedTuple(eachrow(df)[j]))) for j = 1:nrow(df)],
                columns = [Dict("name" => i, "id" => i) for i in names(df)],
                editable = true,
                export_format = "csv"
            ),
            html_hr(),  # horizontal line

            # For debugging, display the raw contents provided by the web browser
            html_div("Raw Content"),
            html_pre(
                string(contents[1:200], "..."),
                style = Dict("whiteSpace" => "pre-wrap", "wordBreak" => "break-all")
            )
        ]
    )
end

callback!(
    app,
    Output("output-data-upload", "children"),
    Input("upload", "contents"),
    State("upload", "filename"),
    State("upload", "last_modified"),
) do contents, filename, last_modified, pathname
    if !(contents isa Nothing)
        return children = [parse_contents(c...) for c in zip(contents, filename, last_modified)]
    end
end