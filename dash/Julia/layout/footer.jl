using Dash
using DashCoreComponents
using DashHtmlComponents

footer = html_footer(
    id = "footer",
    className = "footer",
    html_div(
        id = "footer-container",
        className = "footer-container",
        children = [
            html_div(
                id="footer-line-1",
                className="footer-line",
                html_a(
                    id = "footer-link-1",
                    className = "footer-link",
                    href = "https://github.com/cecoeco/STROBE.jl",
                    children = [
                        html_i(
                            id = "Github-logo",
                            className = "fa-brands fa-github"
                        ),
                        html_small(
                            id = "footer-text",
                            className = "footer-text",
                            " STROBE.jl: Strengthening the Reporting of Observational Studies in Epidemiology © 2024 Ceco Elijah Maples",
                        )
                    ]
                )
            ),
            html_div(
                id="footer-line-2",
                className="footer-line",
                html_a(
                    id="footer-link-2",
                    className="footer-link",
                    href = "https://plotly.com/dash/",
                    html_small(
                        id="footer-text-2",
                        className="footer-text",
                        "Powered by Plotly Dash"
                    )
                )
            )
        ]
    )
)