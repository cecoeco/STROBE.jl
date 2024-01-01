using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../../dash/layout/settings.jl")
include("../../dash/components/dcc_upload.jl")
include("../../dash/components/dashtable_export.jl")

case_control_studies = html_div(
    id = "case-control_studies",
    className = "page",
    children = [
        html_div(
            id = "case-control_studies-header",
            className = "page-header",
            html_h1(id = "case-control_studies-title", className = "title", "Case-control Studies"),
        ),
        settings,
        html_div(
            id = "case-control_studies-upload-export-table-container",
            className = "upload-export-table-container",
            children = [
                html_div(
                    id = "case-control_studies-upload-export-container",
                    className = "upload-export-container",
                    children = [upload, dashtable_export],
                ),
                html_div(
                    id = "case-control_studies-table-container",
                    className = "table-container",
                    dcc_graph(id = "case-control_studies-table", className = "table")
                )
            ]
        )
    ]
)