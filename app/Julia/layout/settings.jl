using Dash
using DashCoreComponents
using DashDaq
using DashHtmlComponents

include("../components/components.jl")

settings = html_div(
    id = "settings-container",
    className = "settings-container",
    children = [
        html_h2(
            id = "settings-title", 
            className = "settings-title", 
            "Settings"
        ),
        html_div(
            id = "settings-containers",
            className = "settings-containers",
            children = [
                sliders,
                fonts,
                text_alignment,
                text_styling,
                colorpickers
            ]
        )
    ]
)