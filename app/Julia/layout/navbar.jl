using Dash
using DashBootstrapComponents
using DashHtmlComponents

include("../components/components.jl")

navbar = dbc_nav(
    id="navbar",
    className="navbar",
    html_div(
        id="navbar-container",
        className="navbar-container",
        html_ul(
            id="nav-items",
            className="nav-items",
            children=[
                html_li(
                    id = "STROBE.jl-nav",
                    className = "nav-item",
                    html_button(
                        id="STROBE.jl-nav-button",
                        className="nav-item-button",
                        dbc_navlink(
                            id = "STROBE.jl-link",
                            className = "nav-link",
                            "STROBE.jl",
                            href = "https://github.com/cecoeco/STROBE.jl",
                            target = "_blank",
                            active = "exact"
                        )
                    )
                ),
                html_li(
                    id="home-nav", 
                    className="nav-item", 
                    html_button(
                        id = "home-nav-button",
                        className = "nav-item-button",
                        dbc_navlink(
                            id = "home-link",
                            className = "nav-link",
                            "Home",
                            href = "/home",
                            active = "exact"
                        )
                    )
                ),
                html_li(
                    id="checklists-nav-list",
                    className="nav-item dropdown", 
                    children=[
                        html_button(
                            id = "dropdown-button",
                            className = "dropdown-button",
                            type = "button",
                            children = [
                                dbc_navlink(
                                    id = "checklists-link",
                                    className = "nav-link",
                                    "Checklists"
                                ),
                                html_i(
                                    id = "dropdown-icon",
                                    className = "fa-solid fa-caret-down"
                                )
                            ]
                        ),
                        html_ul(
                            id="dropdown-menu", 
                            className="dropdown-menu", 
                            children=[
                                html_li(
                                    id="combined-nav", 
                                    className="dropdown-item", 
                                    dbc_navlink(
                                        id="combined-link",
                                        className="nav-link",
                                        "Combined", 
                                        href="/combined", 
                                        active = "exact"
                                    )
                                ),
                                html_li(
                                    id="cohort_studies-nav", 
                                    className="dropdown-item", 
                                    dbc_navlink(
                                        id="cohort-studies-link",
                                        className="nav-link",
                                        "Cohort studies", 
                                        href="/cohort_studies",   
                                        active = "exact"
                                    )
                                ),
                                html_li(
                                    id = "case-control_studies-nav",
                                    className = "dropdown-item",
                                    dbc_navlink(
                                        id = "case-control-studies-link",
                                        className = "nav-link",
                                        "Case-control studies",
                                        href = "/case-control_studies",
                                        active = "exact"
                                    )
                                ),
                                html_li(
                                    id = "cross-sectional_studies-nav",
                                    className = "dropdown-item",
                                    dbc_navlink(
                                        id = "cross-sectional-studies-link",
                                        className = "nav-link",
                                        "Cross-sectional studies",
                                        href = "/cross-sectional_studies",
                                        active = "exact"
                                    )
                                ),
                                html_li(
                                    id = "conference_abstracts-nav",
                                    className = "dropdown-item",
                                    dbc_navlink(
                                        id = "conference-abstracts-link",
                                        className = "nav-link",
                                        "Conference abstracts",
                                        href = "/conference_abstracts",
                                        active = "exact"
                                    )
                                )
                            ]
                        )
                    ]
                ),
                searchbar
            ]
        )
    )
)
