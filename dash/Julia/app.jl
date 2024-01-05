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

include("layout/navbar.jl")
include("layout/footer.jl")
include("components/fab.jl")
include("pages/home.jl")
include("pages/combined.jl")
include("pages/cohort_studies.jl")
include("pages/case-control_studies.jl")
include("pages/cross-sectional_studies.jl")
include("pages/conference_abstracts.jl")
include("pages/404.jl")
include("../../src/STROBE.jl")

assets_folder::String = "dash/assets"

CSS_app::String = joinpath(assets_folder, "build/CSS/app.css")
JavaScript_app::String = joinpath(assets_folder, "build/JavaScript/app.js")

fontawesome::String = "https://use.fontawesome.com/releases/v6.5.1/css/all.css"
googlefonts::String = "https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"

tag_id::String = ""
googletagmanager::String = "https://www.googletagmanager.com/gtag/js?id=$tag_id"

external_stylesheets::Vector{String} = [fontawesome, googlefonts, CSS_app]
external_scripts::Vector{String} = [googletagmanager, JavaScript_app]

app = dash(
    url_base_pathname = "/",
    assets_folder = assets_folder,
    external_stylesheets = external_stylesheets,
    external_scripts = external_scripts,
    suppress_callback_exceptions = true,
    prevent_initial_callbacks = true,
    meta_tags = [
        Dict("charset" => "utf-8"),
        Dict("name" => "viewport", "content" => "width=device-width, initial-scale=1.0"),
        Dict("name" => "description", "content" => "STROBE.jl: Strengthening the Reporting of Observational Studies in Epidemiology"),
        Dict("name" => "keywords", "content" => "Epidemiology, Observational Studies, Reporting, STROBE, Medicine, Public Health, Research, Biostatistics"),
        Dict("name" => "author", "content" => "Ceco Elijah Maples")
    ]
)

app.title = "STROBE.jl: Strengthening the Reporting of Observational Studies in Epidemiology"

page = html_div(id = "page-content")

app.layout = html_div([dcc_location(id = "url"), navbar, fab, page, footer])

callback!(app, Output("page-content", "children"), Input("url", "pathname")) do pathname
    if pathname == "/home" return home
    elseif pathname == "/combined" return combined
    elseif pathname == "/cohort_studies" return cohort_studies
    elseif pathname == "/case-control_studies" return case_control_studies
    elseif pathname == "/cross-sectional_studies" return cross_sectional_studies
    elseif pathname == "/conference_abstracts" return conference_abstracts
    else return not_found_404 end
end

run_server(app, "0.0.0.0", debug = true)

#= go to http://127.0.0.1:8050 =#
