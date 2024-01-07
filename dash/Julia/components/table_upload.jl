using Dash
using DashCoreComponents
using DashHtmlComponents
using CSV
using DataFrames

table_upload = dcc_upload(
    id = "upload-container",
    className = "upload-container",
    html_a(
        id = "upload-link",
        className = "upload-link",
        html_button(
            id = "upload-button",
            className = "upload-button",
            "Drag and Drop or Select Files",
        )
    )
)
