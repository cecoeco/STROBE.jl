using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../layout/layout.jl")
include("../components/components.jl")

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
        #table_upload
    ]
)