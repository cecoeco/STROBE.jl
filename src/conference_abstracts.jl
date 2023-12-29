#https://www.strobe-statement.org

using DataFrames
     
conference_abstracts_df = DataFrame(
    "Item" => [
        "Title",
        "Authors",
        "Study design",
        "Objective",
        "Methods",
        "Setting",
        "Participants",
        missing,
        "Variables",
        "Statistical methods",
        "Results",
        "Participants",
        "matching",
        "Conclusions"
    ],
    "Recommendation" => [
        "Indicate the study's design with a commonly used term in the title (e.g cohort, case- control, cross sectional)",
        "Contact details for the corresponding author",
        "Description of the study design (e.g cohort, case-control, cross sectional)",
        "Specific objectives or hypothesis",
        missing,
        "Description of setting, follow-up dates or dates at which the outcome events occurred or at which the outcomes were present, as well as any points or ranges on other time scales for the outcomes (e.g., prevalence at age 18, 1998-2007).",
        "Cohort study—Give the most important eligibility criteria, and the most important sources and methods of selection of participants. Describe briefly the methods of follow-up\n Case-control study—Give the major eligibility criteria, and the major sources and methods of case ascertainment and control selection\n Cross-sectional study—Give the eligibility criteria, and the major sources and methods of selection of participants",
        "Cohort study—For matched studies, give matching and number of exposed and unexposed\n Case-control study—For matched studies, give matching criteria and the number of controls per case",
        "Clearly define primary outcome for this report.",
        "Describe statistical methods, including those used to control for confounding",
        missing,
        "Report Number of participants at the beginning and end of the study",
        "Report estimates of associations. If relevant, consider translating estimates of relative risk into absolute risk for a meaningful time period\n Report appropriate measures of variability and uncertainty (e.g., odds ratios with confidence intervals",
        "General interpretation of study results"
    ]
)

function conference_abstracts(
    save_location::String = pwd(),
    filename::String = "conference_abstracts",
    filetype::String = "csv",
    sheetname::String = "conference_abstracts",
)
    if filetype == "csv"
        CSV.write("$save_location/$filename.csv", conference_abstracts_df)
        println("$filename.csv to $save_location")
    elseif filetype == "xlsx"
        XLSX.writetable(xlsx_filename, DataFrame(conference_abstracts_df), sheetname = sheetname)
        println("$filename.xlsx to $save_location")
    else
        println("Unsupported file type: $filetype")
    end
end

function conference_abstracts_csv(save_location::String = pwd(), filename::String = "conference_abstracts")
    CSV.write("$save_location/$filename.csv", conference_abstracts_df)
end

function conference_abstracts_xlsx(save_location::String = pwd(), filename::String = "conference_abstracts")
    XLSX.writetable("$save_location/$filename.xlsx", conference_abstracts_df)
end