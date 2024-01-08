using Dash
using DashDaq
using DashHtmlComponents

daq_colorpicker_size = 125

colorpickers = html_div(
    id = "colors-container",
    className = "colors-container",
    children = [
        html_div(
            id = "fill-color-container",
            className = "color-container",
            children = [
                html_h3(id = "fill-color-label", className = "color-label", "Fill Color"),
                daq_colorpicker(
                    id = "fill-color",
                    className = "colorpicker",
                    value = (hex = "#ededed",),
                    size = daq_colorpicker_size
                )
            ]
        ),
        html_div(
            id = "text-color-container",
            className = "colos-container",
            children = [
                html_h3(id = "text-color-label", className = "color-label", "Text Color"),
                daq_colorpicker(
                    id = "text-color",
                    className = "colorpicker",
                    value = (hex = "#000000",),
                    size = daq_colorpicker_size
                )
            ]
        )
    ]
)