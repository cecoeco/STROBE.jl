callback!(
    app,
    Output("table-export", "data"),
    Input("url", "pathname"),
) do pathname
    if pathname == "/combined"
        combined_csv()
        file_path = joinpath(pwd(), "combined.csv")
    elseif pathname == "/cohort_studies"
        cohort_studies_csv()
        file_path = joinpath(pwd(), "cohort_studies.csv")
    elseif pathname == "/case-control_studies"
        case_control_studies_csv()
        file_path = joinpath(pwd(), "case_control_studies.csv")
    elseif pathname == "/cross-sectional_studies"
        cross_sectional_studies_csv()
        file_path = joinpath(pwd(), "cross-sectional_studies.csv")
    elseif pathname == "/conference_abstracts"
        conference_abstracts_csv()
        file_path = joinpath(pwd(), "conference_abstracts.csv")
    end
    return file_path
end

        if pathname == "/combined"
            combined_csv()
            file_path = joinpath(pwd(), "combined.csv")
            children = [parse_contents(file_path, "combined.csv", "")]
        elseif pathname == "/cohort_studies"
            cohort_studies_csv()
            file_path = joinpath(pwd(), "cohort_studies.csv")
            children = [parse_contents(file_path, "cohort_studies.csv", "")]
        elseif pathname == "/case-control_studies"
            case_control_studies_csv()
            file_path = joinpath(pwd(), "case_control_studies.csv")
            children = [parse_contents(file_path, "case_control_studies.csv", "")]
        elseif pathname == "/cross-sectional_studies"
            cross_sectional_studies_csv()
            file_path = joinpath(pwd(), "cross-sectional_studies.csv")
            children = [parse_contents(file_path, "cross-sectional_studies.csv", "")]
        elseif pathname == "/conference_abstracts"
            conference_abstracts_csv()
            file_path = joinpath(pwd(), "conference_abstracts.csv")
            children = [parse_contents(file_path, "conference_abstracts.csv", "")]
        else

        end