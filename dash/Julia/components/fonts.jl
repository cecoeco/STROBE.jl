using Dash
using DashCoreComponents
using DashHtmlComponents

fonts = html_div(
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
                    "Header Text Font",
                ),
                dcc_dropdown(
                    id = "dropdown-headertextfont",
                    className = "dropdown",
                    placeholder = "Select a font",
                    options = [
                        (label = "Arial", value = "Arial"),
                        (label = "Balto", value = "Balto"),
                        (label = "Calibri", value = "Calibri"),
                        (label = "Courier New", value = "Courier New"),
                        (label = "Droid Sans", value = "Droid Sans"),
                        (label = "Droid Serif", value = "Droid Serif"),
                        (label = "Droid Sans Mono", value = "Droid Sans Mono"),
                        (label = "Gravitas One", value = "Gravitas One"),
                        (label = "Helvetica", value = "Helvetica"),
                        (label = "Old Standard TT", value = "Old Standard TT"),
                        (label = "Open Sans", value = "Open Sans"),
                        (label = "Overpass", value = "Overpass"),
                        (label = "PT Sans Narrow", value = "PT Sans Narrow"),
                        (label = "Raleway", value = "Raleway"),
                        (label = "Times New Roman", value = "Times New Roman")
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
                    "Cell Text Font",
                ),
                dcc_dropdown(
                    id = "dropdown-celltextfont",
                    className = "dropdown",
                    placeholder = "Select a font",
                    options = [
                        (label = "Arial", value = "Arial"),
                        (label = "Balto", value = "Balto"),
                        (label = "Calibri", value = "Calibri"),
                        (label = "Courier New", value = "Courier New"),
                        (label = "Droid Sans", value = "Droid Sans"),
                        (label = "Droid Serif", value = "Droid Serif"),
                        (label = "Droid Sans Mono", value = "Droid Sans Mono"),
                        (label = "Gravitas One", value = "Gravitas One"),
                        (label = "Helvetica", value = "Helvetica"),
                        (label = "Old Standard TT", value = "Old Standard TT"),
                        (label = "Open Sans", value = "Open Sans"),
                        (label = "Overpass", value = "Overpass"),
                        (label = "PT Sans Narrow", value = "PT Sans Narrow"),
                        (label = "Raleway", value = "Raleway"),
                        (label = "Times New Roman", value = "Times New Roman")
                    ]
                )
            ]
        )
    ]
)