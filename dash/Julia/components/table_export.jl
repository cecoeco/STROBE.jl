using Dash
using DashCoreComponents
using DashHtmlComponents
using DashTable

table_export = dash_datatable(
    id = "table-export",
    export_format = "csv",
    editable = true,
    tooltip_delay = 0,
    tooltip_duration = nothing,
)