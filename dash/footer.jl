using Dash
using DashHtmlComponents

footer = html_footer(
    id = "footer",
    className = "footer",
    html_div(
        id = "footer-container",
        className = "footer-container",
        html_a(
            id = "footer-link",
            className = "footer-link",
            href = "https://github.com/cecoeco/STROBE.jl",
            children = [
                html_img(
                    id = "footer-logo",
                    className = "footer-logo",
                    src = "dash/assets/github.png",
                    alt = "github logo",
                    title = "github logo"
                ),
                html_small(
                    id = "footer-text",
                    className = "footer-text",
                    "STROBE.jl: Strengthening the Reporting of Observational Studies in Epidemiology © 2023 Ceco Elijah Maples",
                )
            ]
        )
    )
)