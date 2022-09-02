FROM rocker/tidyverse:4.2.1
COPY packages.R /home/rstudio/packages.R
RUN R -q -e "source('/home/rstudio/packages.R')" \
	&& rm -rf /tmp/* \
	&& strip /usr/local/lib/R/site-library/*/libs/*.so
