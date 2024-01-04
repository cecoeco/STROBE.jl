using Dash
using DashCoreComponents
using DashHtmlComponents

sliders = html_div(
    id = "sliders-container",
    className = "sliders-container",
    children = [
        html_div(
            id = "slider-headertextsize-container",
            className = "slider-container",
            children = [
                html_h3(
                    id = "slider-headertextsize-title",
                    className = "slider-title",
                    "Header Text Size",
                ),
                dcc_slider(
                    id = "slider-headertextsize",
                    className = "slider",
                    min = 1,
                    max = 50,
                    value = 15,
                    tooltip = Dict("always_visible" => true, "placement" => "bottom")
                )
            ]
        ),
        html_div(
            id = "slider-celltextsize-container",
            className = "slider-container",
            children = [
                html_h3(
                    id = "slider-celltextsize-title",
                    className = "slider-title",
                    "Cell Text Size",
                ),
                dcc_slider(
                    id = "slider-celltextsize",
                    className = "slider",
                    min = 1,
                    max = 50,
                    value = 15,
                    tooltip = Dict("always_visible" => true, "placement" => "bottom")
                )
            ]
        )
    ]
)