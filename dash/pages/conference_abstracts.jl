using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../../dash/layout/settings.jl")
include("../../dash/components/dcc_upload.jl")
include("../../dash/components/dashtable_export.jl")

conference_abstracts = html_div(
    id = "conference_abstracts",
    className = "page",
    children = [
        html_div(
            id = "conference_abstracts-header",
            className = "page-header",
            html_h1(id = "conference_abstracts-title", className = "title", "Conference Abstracts"),
        ),
        settings,
        html_div(
            id = "conference_abstracts-upload-export-table-container",
            className = "upload-export-table-container",
            children = [
                html_div(
                    id = "conference_abstracts-upload-export-container",
                    className = "upload-export-container",
                    children = [upload, dashtable_export],
                ),
                html_div(
                    id = "conference_abstracts-table-container",
                    className = "table-container",
                    dcc_graph(id = "conference_abstracts-table", className = "table")
                )
            ]
        )
    ]
)