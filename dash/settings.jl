using Dash
using DashCoreComponents
using DashDaq
using DashHtmlComponents
using DashTable
using DataFrames

daq_colorpicker_size = 125

settings = html_div(
    id = "settings-container",
    className = "settings-container",
    children = [
        html_div(
            id = "sliders-container",
            className = "sliders-container",
            children = [
                dcc_slider(
                    id = "slider-headertextsize",
                    className = "slider",
                    min = 1, max = 50, value = 15, marks = Dict(1 => "1", 50 => "50")
                ),
                dcc_slider(
                    id = "slider-celltextsize",
                    className = "slider", 
                    min = 1, max = 50, value = 15, marks = Dict(1 => "1", 50 => "50")
                )
            ]
        ),
        html_div(
            id = "font-container",
            className = "font-container",
            children = [
                dcc_dropdown(
                    id = "dropdown-headertextfont",
                    className = "dropdown",
                    placeholder = "Select a font",
                    options = [
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = "")
                    ]
                ),
                dcc_dropdown(
                    id = "dropdown-celltextfont",
                    className = "dropdown",
                    placeholder = "Select a font",
                    options = [
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = ""),
                        (label = "", value = "")
                    ]
                )
            ]
        ),
        html_div(
            id = "alignment-container",
            className = "alignment-container",
            children = [
                html_div(
                    id = "alignment-horizontal",
                    children = [
                        html_span(
                            id = "alignment-horizontal-left-icon",
                            className = "material-symbols-outlined",
                            "align_horizontal_left"
                        ),
                        html_span(
                            id = "alignment-horizontal-center-icon",
                            className = "material-symbols-outlined",
                            "align_horizontal_center"
                        ),
                        html_span(
                            id = "alignment-horizontal-right-icon",
                            className = "material-symbols-outlined",
                            "align_horizontal_right"
                        ),
                        dcc_radioitems(
                            id = "radioitems-headertextalignment-horizontal",
                            className = "radioitems",
                            value = "left",
                            options = [
                                (label = "Left", value = "left"),
                                (label = "Center", value = "center"),
                                (label = "Right", value = "right")
                            ]
                        ),
                        dcc_radioitems(
                            id = "radioitems-celltextalignment-horizontal",
                            className = "radioitems",
                            value = "left",
                            options = [
                                (label = "Left", value = "left"),
                                (label = "Center", value = "center"),
                                (label = "Right", value = "right")
                            ]
                        )
                    ]
                ),
                html_div(
                    id = "alignment-vertical",
                    children = [
                        html_span(
                            id = "alignment-vertical-top-icon",
                            className = "material-symbols-outlined",
                            "align_vertical_top"
                        ),
                        html_span(
                            id = "alignment-vertical-middle-icon",
                            className = "material-symbols-outlined",
                            "align_vertical_center"
                        ),
                        html_span(
                            id = "alignment-vertical-bottom-icon",
                            className = "material-symbols-outlined",
                            "align_vertical_bottom"
                        ),
                        dcc_radioitems(
                            id = "radioitems-headertextalignment-vertical",
                            className = "radioitems",
                            value = "middle",
                            options = [
                                (label = "Top", value = "top"),
                                (label = "Middle", value = "middle"),
                                (label = "Bottom", value = "bottom")
                            ]
                        ),
                        dcc_radioitems(
                            id = "radioitems-celltextalignment-vertical",
                            className = "radioitems",
                            value = "Middle",
                            options = [
                                (label = "Top", value = "top"),
                                (label = "Middle", value = "middle"),
                                (label = "Bottom", value = "bottom")
                            ]
                        )
                    ]
                )
            ]
        ),
        html_div(
            id = "colors-container",
            className = "colors-container",
            children = [
                daq_colorpicker(
                    id = "headerfillcolor",
                    className = "colorpicker",
                    label = "Header Fill",
                    value = (hex = "#ededed",),
                    size = daq_colorpicker_size
                ),
                daq_colorpicker(
                    id = "cellfillcolor",
                    className = "colorpicker",
                    label = "Cell Fill",
                    value = (hex = "#ffffff",),
                    size = daq_colorpicker_size
                ),
                daq_colorpicker(
                    id = "headertextcolor",
                    className = "colorpicker",
                    label = "Header Text",
                    value = (hex = "#000000",),
                    size = daq_colorpicker_size
                ),
                daq_colorpicker(
                    id = "celltextcolor",
                    className = "colorpicker",
                    label = "Cell Text",
                    value = (hex = "#000000",),
                    size = daq_colorpicker_size
                )
            ]
        )
    ]
)