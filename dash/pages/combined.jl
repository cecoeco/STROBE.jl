using Dash
using DashCoreComponents
using DashDaq
using DashHtmlComponents
using DashTable
using DataFrames

combined = html_div(
    id = "combined",
    className = "page",
    children=[
        html_div(
            id = "combined-header", 
            className = "header", 
            html_h1(
                id = "combined-title", 
                className = "title", 
                "Combined"
            )
        ),
        html_div(
            id = "combined-container",
            className = "upload-container",
            children=[
                dcc_upload(
                    id = "combined-upload-container",
                    className = "upload-container",
                    html_div(
                        id = "combined-upload-text", 
                        className = "upload-text",
                        children=[
                            "Drag and Drop or ", 
                            html_a(
                                id = "combined-upload-button",
                                className = "upload-button",
                                "Select Files"
                            )
                        ]
                    ),
                ),
                dash_datatable(
                    id = "combined-upload-container",
                    export_format = "csv",
                    editable = true,
                    tooltip_delay = 0,
                    tooltip_duration = nothing,
                ),
                dcc_graph(
                    id = "combined-upload-graph",
                    className = "graph"
                )
            ]
        )
    ]
)