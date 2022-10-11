FROM rocker/verse
COPY packages.R /home/rstudio/packages.R
RUN apt-get update \
	&& apt-get -y install fonts-crosextra-carlito fonts-crosextra-caladea \
	&& R -q -e "source('/home/rstudio/packages.R')" \
	&& rm -rf /tmp/* \
	&& strip /usr/local/lib/R/site-library/*/libs/*.so
