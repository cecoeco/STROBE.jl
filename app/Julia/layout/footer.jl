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
                dcc_link(
                    id = "footer-link-1",
                    className = "footer-link",
                    href = "https://github.com/cecoeco/STROBE.jl",
                    target = "_blank",
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
                dcc_link(
                    id="footer-link-2",
                    className="footer-link",
                    href = "https://plotly.com/dash/",
                    target = "_blank",
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