using Dash
using DashCoreComponents
using DashHtmlComponents

searchbar = html_li(
    id = "search-nav",
    className = "nav-item search",
    html_form(
        id = "search-form",
        className = "search-form",
        html_div(
            id = "search-container",
            className = "search-container gcse-searchbox-only",
            children = [
                dcc_input(
                    id = "search-input",
                    className = "search-input",
                    type = "search",
                    placeholder = "Search",
                ),
                html_button(
                    id = "search-button",
                    className = "search-button",
                    type = "submit",
                    html_i(
                        id = "search-submit",
                        className = "search-submit fa-solid fa-magnifying-glass"
                    )
                )
            ]
        )
    )
)