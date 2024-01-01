using Dash
using DashCoreComponents
using DashDaq
using DashHtmlComponents
using DashTable
using DataFrames

daq_colorpicker_size = 120

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
        ),
        html_div(
            id = "font-container",
            className = "font-container",
            children = [
                html_div(
                    id = "font-headertextfont-container",
                    className = "font-container",
                    children = [
                        html_h3(
                            id = "font-title-headertextfont",
                            className = "font-title",
                            "Header Text Font"
                        ),
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
                        )
                    ]
                ),
                html_div(
                    id = "font-celltextfont-container",
                    className = "font-container",
                    children = [
                        html_h3(
                            id = "font-title-celltextfont",
                            className = "font-title",
                            "Cell Text Font"
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
                )
            ]
        ),
        html_div(
            id = "alignment-container",
            className = "alignment-container",
            children = [
                html_h3(
                    id = "alignment-title",
                    className = "alignment-title",
                    "Text Alignment"
                ),
                html_div(
                    id = "alignment-horizontal",
                    children = [
                        html_h4(
                            id = "alignment-title-horizontal",
                            className = "alignment-title",
                            "Horizontal Alignment"
                        ),
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
                        html_div(
                            id = "alignment-headertextalignment-horizontal-container",
                            children = [
                                html_h5(
                                    id = "alignment-title-headertextalignment-horizontal",
                                    className = "alignment-title",
                                    "Header"
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
                                )
                            ]
                        ),
                        html_div(
                            id = "alignment-celltextalignment-horizontal-container",
                            children = [
                                html_h5(
                                    id = "alignment-title-celltextalignment-horizontal",
                                    className = "alignment-title",
                                    "Body"
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
                        )
                    ]
                ),
                html_div(
                    id = "alignment-vertical",
                    children = [
                        html_h4(
                            id = "alignment-title-vertical",
                            className = "alignment-title",
                            "Vertical Alignment"
                        ),
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
                        html_div(
                            id = "alignment-headertextalignment-vertical-container",
                            children = [
                                html_h5(
                                    id = "alignment-title-headertextalignment-vertical",
                                    className = "alignment-title",
                                    "Header"
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
                                )
                            ]
                        ),
                        html_div(
                            id = "alignment-celltextalignment-vertical-container",
                            children = [
                                html_h5(
                                    id = "alignment-title-celltextalignment-vertical",
                                    className = "alignment-title",
                                    "Body"
                                ),
                                dcc_radioitems(
                                    id = "radioitems-celltextalignment-vertical",
                                    className = "radioitems",
                                    value = "middle",
                                    options = [
                                        (label = "Top", value = "top"),
                                        (label = "Middle", value = "middle"),
                                        (label = "Bottom", value = "bottom")
                                    ]
                                )
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
                html_h3(
                    id = "colors-title",
                    className = "colors-title",
                    "Colors"
                ),
                daq_colorpicker(
                    id = "headerfillcolor",
                    className = "colorpicker",
                    label = "Header Fill",
                    value = (hex = "#ededed",),
                    size = daq_colorpicker_size
                ),
                daq_colorpicker(
                    id = "headertextcolor",
                    className = "colorpicker",
                    label = "Header Text",
                    value = (hex = "#000000",),
                    size = daq_colorpicker_size,
                ),
                daq_colorpicker(
                    id = "cellfillcolor",
                    className = "colorpicker",
                    label = "Cell Fill",
                    value = (hex = "#ffffff",),
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