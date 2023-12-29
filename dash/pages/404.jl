using Dash

not_found_404 = html_div(
    id="not-found-page",
    className="page",
    children=[
        html_h1(
            id="not-found-page-title", 
            className="title", 
            "404: Not found"
        ),
        html_p(
            id="not-found-page-text", 
            className="text",
            "The requested URL was not found on this server."
        ),
    ]
)