using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../layout/layout.jl")
include("../components/components.jl")

cohort_studies = html_div(
    id = "cohort_studies",
    className = "page",
    children = [
        html_div(
            id = "cohort_studies-header",
            className = "page-header",
            html_h1(id = "cohort_studies-title", className = "title", "Cohort Studies"),
        ),
        settings,
        #table_upload
    ]
)