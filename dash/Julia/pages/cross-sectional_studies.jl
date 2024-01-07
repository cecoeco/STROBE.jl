using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../../../dash/Julia/layout/layout.jl")
include("../../../dash/Julia/components/components.jl")

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