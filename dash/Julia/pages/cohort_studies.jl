using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

include("../../../dash/Julia/layout/settings.jl")
include("../../../dash/Julia/components/table_upload.jl")
include("../../../dash/Julia/components/table_export.jl")

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
        html_div(
            id = "cohort_studies-upload-export-table-container",
            className = "upload-export-table-container",
            children = [
                html_div(
                    id = "cohort_studies-upload-export-container",
                    className = "upload-export-container",
                    children = [table_upload, table_export],
                ),
                html_div(
                    id = "cohort_studies-table-container",
                    className = "table-container",
                    dcc_graph(id = "cohort_studies-table", className = "table")
                )
            ]
        )
    ]
)