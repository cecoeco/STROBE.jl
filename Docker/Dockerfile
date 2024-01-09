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

WORKDIR /dash

COPY /dash/assets/CSS *.css
COPY /dash/assets/JavaScript *.js
COPY /dash/Julia *.jl

CMD ["julia", "/Julia/app.jl"]