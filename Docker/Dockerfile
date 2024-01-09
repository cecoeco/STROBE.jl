FROM julia:alpine

RUN julia -e 'using Pkg; \
    Pkg.add("Dash"); \
    Pkg.add("DashBootstrapComponents"); \
    Pkg.add("DashCoreComponents"); \
    Pkg.add("DashDaq"); \
    Pkg.add("DashHtmlComponents"); \
    Pkg.add("DashTable"); \
    Pkg.add("PlotlyJS"); \
    Pkg.add("DataFrames"); \
    Pkg.add("Base64"); \
    Pkg.add("CSV"); \
    Pkg.add("XLSX"); \
    Pkg.add("Colors"); \
    Pkg.add("HTTP")'

COPY / *.css
COPY / *.jl
COPY / *.js

CMD ["julia", "app.jl"]