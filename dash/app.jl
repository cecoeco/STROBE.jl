using Dash
using DashBootstrapComponents
using DashCoreComponents
using DashDaq
using DashHtmlComponents
using DashTable
using PlotlyJS
using DataFrames
using CSV
using XLSX
using Colors

include("../../STROBE.jl/src/STROBE.jl")
include("navbar.jl")
include("footer.jl")
include("pages/combined.jl")
include("pages/cohort_studies.jl")
include("pages/case-control_studies.jl")
include("pages/cross-sectional_studies.jl")
include("pages/conference_abstracts.jl")
include("pages/404.jl")

assets_folder = "/STOBE.jl/dash/assets"

external_stylesheets = [
    "https://use.fontawesome.com/releases/v6.5.1/css/all.css",
    "https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200",
]

app = dash(
    url_base_pathname="/",
    assets_folder=assets_folder,
    external_stylesheets=external_stylesheets,
    suppress_callback_exceptions=true,
    prevent_initial_callbacks=true,
    meta_tags=[
        Dict("charset" => "utf-8"),
        Dict("name" => "viewport", "content" => "width=device-width, initial-scale=1.0"),
        Dict("name" => "description", "content" => "STROBE.jl: Strengthening The Organization and Reporting of Microbiome Studies"),
        Dict("name" => "keywords", "content" => ""),
        Dict("name" => "author", "content" => "Ceco Elijah Maples")
    ]
)

app.title = ""

content = html_div(id="page-content")

app.layout = html_div([dcc_location(id="url"), navbar, content, footer])

callback!(app, Output("page-content", "children"), Input("url", "pathname")) do pathname
    if pathname == "/home"
        return home_page
    elseif pathname == "/combined"
        return combined
    elseif pathname == "/cohort studies"
        return cohort_studies
    elseif pathname == "/case-control studies"
        return case_control_studies
    elseif pathname == "/cross-sectional studies"
        return cross_sectional_studies
    elseif pathname == "/conference abstracts"
        return conference_abstracts
    else
        return not_found_404
    end
end

run_server(app, "0.0.0.0", debug=true)

#= go to http://127.0.0.1:8050 =#