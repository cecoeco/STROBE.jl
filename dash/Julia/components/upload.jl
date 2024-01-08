using Dash
using DashCoreComponents
using DashHtmlComponents

table_upload = html_div(
    id = "upload-container",
    className = "upload-container",
    children = [
        dcc_upload(
            id = "upload",
            className = "upload",
            multiple = true,
            html_a(
                id = "upload-link",
                className = "upload-link",
                html_button(
                    id = "upload-button",
                    className = "upload-button",
                    "Drag and Drop or Select Files",
                )
            )
        ),
        html_div(id = "output-data-upload")
    ]
)
