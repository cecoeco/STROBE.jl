using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../layout/layout.jl")
include("../components/components.jl")

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
        table_upload
    ]
)