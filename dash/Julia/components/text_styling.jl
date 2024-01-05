using Dash
using DashCoreComponents
using DashHtmlComponents

text_styling = html_div(
    id = "text-styling-container",
    className = "text-styling-container",
    children = [
        html_h3(
            id="text-styling-title", 
            className="text-styling-title", 
            "Text Styling"
        ),
        html_button(
            id="text-styling-button-bold",
            className="text-styling-button",
            html_i(
                id="text-styling-bold",
                className="text-styling-icon fa-solid fa-bold"
            )
        ),
        html_button(
            id="text-styling-button-italic",
            className="text-styling-button",
            html_i(
                id="text-styling-italic",
                className="text-styling-icon fa-solid fa-italic"
            )
        ),
        html_button(
            id="text-styling-button-underline",
            className="text-styling-button",
            html_i(
                id="text-styling-underline",
                className="text-styling-icon fa-solid fa-underline"
            )
        ),
        html_button(
            id="text-styling-button-strike",
            className="text-styling-button",
            html_i(
                id="text-styling-strike",
                className="text-styling-icon fa-solid fa-strikethrough"
            )
        )
    ]
)