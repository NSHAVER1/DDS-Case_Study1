# Makefile for Case Study 1
# 
# Contributors: Georges Michel, Jack Nelson, Nicole Shaver, Nathan Tuttle
 
all: paper/GDPandEducation_CaseStudy1.html

clean: 
	rm -f data/EDSTATS.csv data/GDP.csv
	rm -f paper/*.html
	rm -rf paper/GDPandEducation_CaseStudy1_files
	rm -f paper/GDPandEducation_CaseStudy1.utf8.md

paper/GDPandEducation_CaseStudy1.html: paper/GDPandEducation_CaseStudy1.Rmd
	Rscript -e 'library(rmarkdown); Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc");rmarkdown::render("$<", clean=FALSE)'
	rm -rf paper/GDPandEducation_CaseStudy1_files
	rm -f paper/GDPandEducation_CaseStudy1.utf8.md