using Dash
using DashCoreComponents
using DashDaq
using DashHtmlComponents
using DashTable
using DataFrames

daq_colorpicker_size = 125

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
            id = "combined-settings-container",
            className = "settings-container",
            children=[
                html_div(
                    id = "combined-sliders-container",
                    className = "sliders-container",
                    children=[
                        dcc_slider(
                            id = "combined-slider-headertextsize",
                            className = "slider",
                            min = 1,
                            max = 50,
                            value = 15,
                            marks = Dict(
                                1 => "1",
                                50 => "50"
                            )
                        ),
                        dcc_slider(
                            id = "combined-slider-celltextsize",
                            className = "slider",
                            min = 1,
                            max = 50,
                            value = 15,
                            marks = Dict(
                                1 => "1",
                                50 => "50"
                            )
                        )
                    ]
                ),
                html_div(
                    id = "combined-font-container",
                    className = "font-container",
                    children=[
                        dcc_dropdown(
                            id = "combined-dropdown-headertextfont",
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
                                (label = "", value = ""),
                                (label = "", value = ""),
                                (label = "", value = ""),
                                (label = "", value = ""),
                                (label = "", value = ""),
                                (label = "", value = ""),
                                (label = "", value = ""),
                                (label = "", value = ""),
                            ]
                        ),
                        dcc_dropdown(
                            id = "combined-dropdown-celltextfont",
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
                    id="combined-alignment-container",
                    className="alignment-container",
                    children=[
                        dcc_radioitems(
                            id="combined-radioitems-headertextalignment-horizontal",
                            className="radioitems",
                            value="left",
                            options=[
                                (label="Left", value="left"),
                                (label="Center", value="center"),
                                (label="Right", value="right")
                            ]
                        ),
                        dcc_radioitems(
                            id="combined-radioitems-headertextalignment-vertical",
                            className="radioitems",
                            value="center",
                            options=[
                                (label="Top", value="top"),
                                (label="Center", value="center"),
                                (label="Bottom", value="bottom")
                            ]
                        ),
                        dcc_radioitems(
                            id="combined-radioitems-celltextalignment-horizontal",
                            className="radioitems",
                            value="left",
                            options=[
                                (label="Left", value="left"),
                                (label="Center", value="center"),
                                (label="Right", value="right")
                            ]
                        ),
                        dcc_radioitems(
                            id="combined-radioitems-celltextalignment-vertical",
                            className="radioitems",
                            value="center",
                            options=[
                                (label="Top", value="top"),
                                (label="Center", value="center"),
                                (label="Bottom", value="bottom")
                            ]
                        )
                    ]
                ),
                html_div(
                    id = "combined-colors-container",
                    className = "colors-container",
                    children=[
                        daq_colorpicker(
                            id = "combined-headerfillcolor",
                            className = "colorpicker",
                            label = "Header Fill",
                            value = (hex = "#ffffff",),
                            size = daq_colorpicker_size,
                        ),
                        daq_colorpicker(
                            id = "combined-cellfillcolor",
                            className = "colorpicker",
                            label = "Cell Fill",
                            value = (hex = "#ffffff",),
                            size = daq_colorpicker_size,
                        ),
                        daq_colorpicker(
                            id = "combined-headertextcolor",
                            className = "colorpicker",
                            label = "Header Text",
                            value = (hex = "#000000",),
                            size = daq_colorpicker_size,
                        ),
                        daq_colorpicker(
                            id = "combined-celltextcolor",
                            className = "colorpicker",
                            label = "Cell Text",
                            value = (hex = "#000000",),
                            size = daq_colorpicker_size,
                        )
                    ]
                )
            ]
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
                    )
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