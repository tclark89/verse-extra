FROM rocker/verse
COPY packages.R /home/rstudio/packages.R
RUN apt-get update
RUN apt-get -y install fonts-crosextra-carlito fonts-crosextra-caladea
RUN R -q -e "source('/home/rstudio/packages.R')"
RUN rm -rf /tmp/*
RUN strip /usr/local/lib/R/site-library/*/libs/*.so
