function parse_contents(contents, filename)
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
    return df
end

callback!(
    app,
    Output("datatable-upload-container", "data"),
    Output("datatable-upload-container", "columns"),
    Input("datatable-upload", "contents"),
    State("datatable-upload", "filename"),
) do contents, filename
    if contents isa Nothing
        return [Dict()], []
    end
    df = parse_contents(contents, filename)
    return Dict.(pairs.(eachrow(df))), [Dict("name" => i, "id" => i) for i in names(df)]
end

callback!(
    app,
    Output("datatable-upload-graph", "figure"),
    Input("datatable-upload-container", "data"),
) do rows
    if any([isempty(rw) for rw in rows])
        return Dict("data" => [Dict("x" => [], "y" => [], "type" => "bar")])
    end
    df = DataFrame(rows)
    nme = names(df)
    return Dict(
        "data" => [Dict("x" => df[!, nme[1]], "y" => df[!, nme[2]], "type" => "bar")],
    )
end