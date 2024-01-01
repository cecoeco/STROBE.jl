using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../../dash/layout/settings.jl")
include("../../dash/components/dcc_upload.jl")
include("../../dash/components/dashtable_export.jl")

combined = html_div(
    id = "combined",
    className = "page",
    children = [
        html_div(
            id = "combined-header",
            className = "page-header",
            html_h1(id = "combined-title", className = "title", "Combined"),
        ),
        settings,
        html_div(
            id = "combined-upload-export-table-container",
            className = "upload-export-table-container",
            children = [
                html_div(
                    id = "combined-upload-export-container",
                    className = "upload-export-container",
                    children = [upload, dashtable_export],
                ),
                html_div(
                    id = "combined-table-container",
                    className = "table-container",
                    dcc_graph(id = "combined-table", className = "table")
                )
            ]
        )
    ]
)