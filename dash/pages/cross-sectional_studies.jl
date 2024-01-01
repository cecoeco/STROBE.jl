using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../../dash/layout/settings.jl")
include("../../dash/components/dcc_upload.jl")
include("../../dash/components/dashtable_export.jl")

cross_sectional_studies = html_div(
    id = "cross-sectional_studies",
    className = "page",
    children = [
        html_div(
            id = "cross-sectional_studies-header",
            className = "page-header",
            html_h1(id = "cross-sectional_studies-title", className = "title", "Cross-sectional Studies"),
        ),
        settings,
        html_div(
            id = "cross-sectional_studies-upload-export-table-container",
            className = "upload-export-table-container",
            children = [
                html_div(
                    id = "cross-sectional_studies-upload-export-container",
                    className = "upload-export-container",
                    children = [upload, dashtable_export],
                ),
                html_div(
                    id = "cross-sectional_studies-table-container",
                    className = "table-container",
                    dcc_graph(id = "cross-sectional_studies-table", className = "table")
                )
            ]
        )
    ]
)