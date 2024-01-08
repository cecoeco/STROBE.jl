using CSV
using DataFrames

combined_df = CSV.read("https://github.com/cecoeco/STROBE.jl/blob/master/data/combined.csv", DataFrame)
cohort_studies_df = CSV.read("https://github.com/cecoeco/STROBE.jl/blob/master/data/cohort_studies.csv", DataFrame)
case_control_studies_df = CSV.read("https://github.com/cecoeco/STROBE.jl/blob/master/data/case_control_studies.csv", DataFrame)
cross_sectional_studies_df = CSV.read("https://github.com/cecoeco/STROBE.jl/blob/master/data/cross_sectional_studies.csv", DataFrame)
conference_abstracts_df = CSV.read("https://github.com/cecoeco/STROBE.jl/blob/master/data/conference_abstracts.csv", DataFrame)