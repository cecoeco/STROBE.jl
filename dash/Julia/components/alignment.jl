using Dash
using DashCoreComponents
using DashHtmlComponents

alignment = html_div(
    id = "alignment-container",
    className = "alignment-container",
    children = [
        html_h3(id = "alignment-title", className = "alignment-title", "Text Alignment"),
        html_div(
            id = "alignment-horizontal",
            children = [
                html_div(
                    id = "alignment-horizontal-container",
                    className = "alignment-icon-container",
                    children = [
                        html_span(
                            id = "alignment-horizontal-left-icon",
                            className = "material-symbols-outlined",
                            "align_horizontal_left",
                        ),
                        html_span(
                            id = "alignment-horizontal-center-icon",
                            className = "material-symbols-outlined",
                            "align_horizontal_center",
                        ),
                        html_span(
                            id = "alignment-horizontal-right-icon",
                            className = "material-symbols-outlined",
                            "align_horizontal_right"
                        )
                    ]
                ),
                html_div(
                    id = "alignment-horizontal-container",
                    className = "alignment-container",
                    dcc_radioitems(
                        id = "radioitems-horizontal",
                        className = "radioitems",
                        value = "left",
                        options = [
                            (label = "Left", value = "left"),
                            (label = "Center", value = "center"),
                            (label = "Right", value = "right")
                        ]
                    )
                )
            ]
        ),
        html_div(
            id = "alignment-vertical",
            children = [
                html_div(
                    id = "alignment-vertical-container",
                    className = "alignment-icon-container",
                    children = [
                        html_span(
                            id = "alignment-vertical-top-icon",
                            className = "material-symbols-outlined",
                            "align_vertical_top",
                        ),
                        html_span(
                            id = "alignment-vertical-middle-icon",
                            className = "material-symbols-outlined",
                            "align_vertical_center",
                        ),
                        html_span(
                            id = "alignment-vertical-bottom-icon",
                            className = "material-symbols-outlined",
                            "align_vertical_bottom"
                        )
                    ]
                ),
                html_div(
                    id = "alignment-vertical-container",
                    className = "alignment-container",
                    dcc_radioitems(
                        id = "radioitems-vertical",
                        className = "radioitems",
                        value = "middle",
                        options = [
                            (label = "Top", value = "top"),
                            (label = "Middle", value = "middle"),
                            (label = "Bottom", value = "bottom")
                        ]
                    )
                )
            ]
        )
    ]
)