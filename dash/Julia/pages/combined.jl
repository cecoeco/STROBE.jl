using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../../../dash/Julia/layout/layout.jl")
include("../../../dash/Julia/components/components.jl")

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
        table_upload
    ]
)