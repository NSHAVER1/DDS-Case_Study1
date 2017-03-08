all:	paper/GDPandEducation_CaseStudy1.html

clean: 
	rm -f data/EDSTATS.csv data/GDP.csv

download.R: source/download.R
	Rscript $<
	
GDPandEducation_CaseStudy1.html: paper/GDPandEducation_CaseStudy1.R data/EDSTATS.csv data/GDP.csv source/cleanup_ED_GDP.R source/merge_ED_GDP.R
	Rscript -e 'rmarkdown::render("$<")'
