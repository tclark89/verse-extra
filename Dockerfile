FROM rocker/rstudio:4.2.1
RUN R -q -e 'install.packages(c("gt", "DT", "kableExtra"))'