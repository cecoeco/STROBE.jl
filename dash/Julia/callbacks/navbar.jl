callback!(app, Output("page-content", "children"), Input("url", "pathname")) do pathname
    if pathname == "/home"
        return home
    elseif pathname == "/combined"
        return combined
    elseif pathname == "/cohort_studies"
        return cohort_studies
    elseif pathname == "/case-control_studies"
        return case_control_studies
    elseif pathname == "/cross-sectional_studies"
        return cross_sectional_studies
    elseif pathname == "/conference_abstracts"
        return conference_abstracts
    else
        return not_found_404
    end
end