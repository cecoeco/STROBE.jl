table = html_div(
    children = [
        html_h5(filename),
        html_h6(Libc.strftime(date)),
        dash_datatable(
            id = "table-export",
            data = [Dict(pairs(NamedTuple(eachrow(df)[j]))) for j = 1:nrow(df)],
            columns = [Dict("name" => i, "id" => i) for i in names(df)],
            editable = true,
            export_format = "csv",
        ),
        html_hr(),  # horizontal line

        # For debugging, display the raw contents provided by the web browser
        html_div("Raw Content"),
        html_pre(
            string(contents[1:200], "..."),
            style = Dict("whiteSpace" => "pre-wrap", "wordBreak" => "break-all"),
        ),
    ],
)