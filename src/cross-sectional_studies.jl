#https://www.strobe-statement.org

using DataFrames
using CSV
using XLSX

cross_sectional_studies_df = DataFrame(
    "" => [
        "Title and abstract",
        missing,
        "Introduction",
        "Background/rationale",
        "Objectives",
        "Methods",
        "Study design",
        "Setting",
        "Participants",
        "Variables",
        "Data sources/measurement",
        "Bias",
        "Study size",
        "Quantitative variables",
        "Statistical methods",
        missing,
        missing,
        missing,
        missing,
        "Results",
        "Participants",
        missing,
        missing,
        "Descriptive data",
        missing,
        "Outcome data",
        "Main results",
        missing,
        missing,
        "other analyzes",
        "Discussion",
        "Key results",
        "Limitations",
        "Interpretation",
        "Generalizability",
        "Other information",
        "Funding"
    ],
    "Item No." => [
        1,
        missing,
        missing,
        2,
        3,
        missing,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        missing,
        missing,
        missing,
        missing,
        missing,
        13,
        missing,
        missing,
        14,
        missing,
        15,
        16,
        missing,
        missing,
        17,
        missing,
        18,
        19,
        20,
        21,
        missing,
        22
    ],
    "Recommendation" => [
        "(a) Indicate the study’s design with a commonly used term in the title or the abstract",
        "(b) Provide in the abstract an informative and balanced summary of what was done and what was found",
        missing,
        "Explain the scientific background and rationale for the investigation being reported",
        "State specific objectives, including any prespecified hypotheses",
        missing,
        "Present key elements of study design early in the paper",
        "Describe the setting, locations, and relevant dates, including periods of recruitment, exposure, follow-up, and data collection",
        "(a) Give the eligibility criteria, and the sources and methods of selection of participants",
        "Clearly define all outcomes, exposures, predictors, potential confounders, and effect modifiers. Give diagnostic criteria, if applicable",
        "For each variable of interest, give sources of data and details of methods of assessment (measurement). Describe comparability of assessment methods if there is more than one group",
        "Describe any efforts to address potential sources of bias",
        "Explain how the study size was arrived at",
        "Explain how quantitative variables were handled in the analyses. If applicable, describe which groupings were chosen and why",
        "(a) Describe all statistical methods, including those used to control for confounding",
        "(b) Describe any methods used to examine subgroups and interactions",
        "(c) Explain how missing data were addressed",
        "(d) If applicable, describe analytical methods taking account of sampling strategy",
        "(e) Describe any sensitivity analyses",
        missing,
        "(a) Report numbers of individuals at each stage of study—eg numbers potentially eligible, examined for eligibility, confirmed eligible, included in the study, completing follow-up, and analysed",
        "(b) Give reasons for non-participation at each stage",
        "(c) Consider use of a flow diagram",
        "(a) Give characteristics of study participants (eg demographic, clinical, social) and information on exposures and potential confounders",
        "(b) Indicate number of participants with missing data for each variable of interest",
        "Report numbers of outcome events or summary measures",
        "(a) Give unadjusted estimates and, if applicable, confounder-adjusted estimates and their precision (eg, 95% confidence interval). Make clear which confounders were adjusted for and why they were included",
        "(b) Report category boundaries when continuous variables were categorized",
        "(c) If relevant, consider translating estimates of relative risk into absolute risk for a meaningful time period",
        "Report other analyses done—eg analyses of subgroups and interactions, and sensitivity analyses",
        missing,
        "Summarise key results with reference to study objectives",
        "Discuss limitations of the study, taking into account sources of potential bias or imprecision. Discuss both direction and magnitude of any potential bias",
        "Give a cautious overall interpretation of results considering objectives, limitations, multiplicity of analyses, results from similar studies, and other relevant evidence",
        "Discuss the generalisability (external validity) of the study results",
        missing,
        "Give the source of funding and the role of the funders for the present study and, if applicable, for the original study on which the present article is based"
    ]
)

function cross_sectional_studies(
    save_location::String = pwd(),
    filename::String = "cross_sectional_studies",
    filetype::String = "csv",
    sheetname::String = "cross_sectional_studies",
)
    if filetype == "csv"
        CSV.write("$save_location/$filename.csv", cross_sectional_studies_df)
        println("$filename.csv to $save_location")
    elseif filetype == "xlsx"
        XLSX.writetable(xlsx_filename, DataFrame(cross_sectional_studies_df), sheetname = sheetname)
        println("$filename.xlsx to $save_location")
    else
        println("Unsupported file type: $filetype")
    end
end

function cross_sectional_studies_csv(save_location::String = pwd(), filename::String = "cross_sectional_studies")
    CSV.write("$save_location/$filename.csv", cross_sectional_studies_df)
end

function cross_sectional_studies_xlsx(save_location::String = pwd(), filename::String = "cross_sectional_studies")
    XLSX.writetable("$save_location/$filename.xlsx", cross_sectional_studies_df)
end
