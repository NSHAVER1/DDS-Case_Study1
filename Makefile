# Makefile for GDP case study
# 
all: paper/GDPandEducation_CaseStudy1.html

clean: 
	rm -f data/EDSTATS.csv data/GDP.csv
	rm -f paper/*.html

#data/EDSTATS.csv data/GDP.csv: source/download.R
#	Rscript $<

paper/GDPandEducation_CaseStudy1.html: paper/GDPandEducation_CaseStudy1.Rmd
	Rscript -e 'library(rmarkdown); Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc");rmarkdown::render("$<")'
