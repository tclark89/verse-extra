FROM rocker/tidyverse:4.2.1
RUN R -q -e 'install.packages(c("gt", "DT", "kableExtra"))' \
	&& strip /usr/local/lib/R/site-library/*/libs/*.so
