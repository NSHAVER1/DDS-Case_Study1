# Makefile for Case Study 1
# 
# Contributors: Georges Michel, Jack Nelson, Nicole Shaver, Nathan Tuttle
 
all: paper/GDPandEducation_CaseStudy1.html

clean: 
	rm -f data/EDSTATS.csv data/GDP.csv
	rm -f paper/*.html

paper/GDPandEducation_CaseStudy1.html: paper/GDPandEducation_CaseStudy1.Rmd
	Rscript -e 'library(rmarkdown); Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc");rmarkdown::render("$<")'
