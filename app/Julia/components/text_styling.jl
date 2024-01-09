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
            
            value="bold",
            html_i(
                id="text-styling-bold",
                className="text-styling-icon fa-solid fa-bold"
            )
        ),
        html_button(
            id="text-styling-button-italic",
            className="text-styling-button",
            value="italic",
            html_i(
                id="text-styling-italic",
                className="text-styling-icon fa-solid fa-italic"
            )
        ),
        html_button(
            id="text-styling-button-underline",
            className="text-styling-button",
            value="underline",
            html_i(
                id="text-styling-underline",
                className="text-styling-icon fa-solid fa-underline"
            )
        ),
        html_button(
            id="text-styling-button-strikethrough",
            className="text-styling-button",
            value="strikethrough",
            html_i(
                id = "text-styling-strikethrough",
                className="text-styling-icon fa-solid fa-strikethrough"
            )
        )
    ]
)