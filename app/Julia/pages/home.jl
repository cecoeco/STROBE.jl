using Dash
using DashHtmlComponents
using DashCoreComponents

home = html_div(
    id = "home",
    className = "page",
    children=[
        html_div(
            id = "home-title-container", 
            className = "title-container", 
            html_h1(
                id = "home-title", 
                className = "-page-title", 
                "STROBE.jl: Strengthening the Reporting of Observational Studies in Epidemiology"
            )
        ),
        html_div(
            id = "home-text",
            className = "text",
            children=[
                html_p(
                    className="home-text",
                ),
                html_a(
                    className = "home-link",
                ),
                html_p(
                    className="home-text"
                )
            ]
        )
    ]
)
