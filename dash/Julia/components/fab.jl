using Dash
using DashCoreComponents
using DashHtmlComponents

fab = html_button(
    id = "fab",
    className = "fab",
    type = "button",
    dcc_link(
        id = "fab-link",
        className = "fab-link",
        target = "_blank",
        href = "https://github.com/cecoeco/STROBE.jl",
        children = [
            html_i(id = "fab-star", className = "fa-regular fa-star"),
            html_small(id = "fab-text", className = "fab-text", "Star on Github"),
        ]
    )
)