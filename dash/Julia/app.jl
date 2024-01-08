using Dash
using DashBootstrapComponents
using DashCoreComponents
using DashDaq
using DashHtmlComponents
using DashTable
using HTTP
using PlotlyJS
using DataFrames
using Base64
using CSV
using XLSX
using Colors

assets_folder::String = "dash/assets"

fontawesome_css::String = "https://use.fontawesome.com/releases/v6.5.1/css/all.css"
googlefonts_css::String = "https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"

external_stylesheets::Vector{String} = [fontawesome_css, googlefonts_css]

google_tag_manager_js::String = "https://www.googletagmanager.com/gtag/js?id=tag_id"
programmable_search_engine_js::String = "https://cse.google.com/cse.js?cx=83683328822a24dfb"

external_scripts::Vector{String} = []

meta_tags = [
    Dict("charset" => "utf-8"),
    Dict("name" => "viewport", "content" => "width=device-width, initial-scale=1.0"),
    Dict("name" => "description", "content" => "STROBE.jl: Strengthening the Reporting of Observational Studies in Epidemiology"),
    Dict("name" => "keywords", "content" => "Epidemiology, Observational Studies, Reporting, STROBE, Medicine, Public Health, Research, Biostatistics"),
    Dict("name" => "author", "content" => "Ceco Elijah Maples")
]

app = dash(
    url_base_pathname = "/",
    assets_folder = assets_folder,
    external_stylesheets = external_stylesheets,
    external_scripts = external_scripts,
    suppress_callback_exceptions = true,
    prevent_initial_callbacks = true,
    update_title = "Loading...",
    meta_tags = meta_tags
)

app.title = "STROBE.jl: Strengthening the Reporting of Observational Studies in Epidemiology"

app.index_string = "
<!DOCTYPE html>
<html lang=\"en\">
    <head>
        {%metas%}
        <title>{%title%}</title>
        {%favicon%}
        {%css%}
        <script async src=\"$google_tag_manager_js\"></script>
        <script async src=\"$programmable_search_engine_js\"></script>
    </head>
    <body>
        {%app_entry%}
        <footer>
            {%config%}
            {%scripts%}
            {%renderer%}
        </footer>
    </body>
</html>
"

include("layout/layout.jl")
include("components/components.jl")
include("pages/pages.jl")

page = html_div(id = "page-content")

app.layout = html_div([dcc_location(id = "url"), navbar, fab, page, footer])

include("callbacks/callbacks.jl")

run_server(app, "0.0.0.0", debug = true)

#= go to http://127.0.0.1:8050 =#


