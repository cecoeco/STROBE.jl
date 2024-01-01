using Dash
using DashHtmlComponents

fab = html_div(
    id="fab-container",
    className="fab-container",
    html_button(
        id="fab",
        className="fab",
        type="button",
        html_a(
            id="fab-link",
            className="fab-link",
            href="https://github.com/cecoeco/STROBE.jl",
            children=[
                html_small(
                    id = "fab-text", 
                    className = "fab-text", 
                    "Star on Github"
                ),
                html_i(
                    id = "fab-star", 
                    className = "fa-regular fa-star"
                )
            ]
        )
    )
)
