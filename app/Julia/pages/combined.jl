using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../layout/layout.jl")
include("../components/components.jl")

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
        table_upload,
        
    ]
)