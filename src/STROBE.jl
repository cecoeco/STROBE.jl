module STROBE

using DataFrames
using PlotlyJS
using Colors
using CSV
using XLSX

include("table.jl")
include("combined.jl")
include("cohort_studies.jl")
include("case-control_studies.jl")
include("cross-sectional_studies.jl")
include("conference_abstracts.jl")
include("openapp.jl")

end