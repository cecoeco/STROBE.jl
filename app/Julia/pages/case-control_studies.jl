using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../layout/layout.jl")
include("../components/components.jl")

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
        #table_upload
    ]
)