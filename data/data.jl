using CSV
using DataFrames

combined_df = CSV.read("/Users/cecomaples/Desktop/STROBE.jl/data/combined.csv", DataFrame)
cohort_studies_df = CSV.read("/Users/cecomaples/Desktop/STROBE.jl/data/cohort_studies.csv", DataFrame)
case_control_studies_df = CSV.read("/Users/cecomaples/Desktop/STROBE.jl/data/case_control_studies.csv", DataFrame)
cross_sectional_studies_df = CSV.read("/Users/cecomaples/Desktop/STROBE.jl/data/cross_sectional_studies.csv", DataFrame)
conference_abstracts_df = CSV.read("/Users/cecomaples/Desktop/STROBE.jl/data/conference_abstracts.csv", DataFrame)