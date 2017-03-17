# TITLE

GDP and Income Levels for Countries Using World Bank Data

Contributors: Georges Michel, Jack Nelson, Nicole Shaver, Nathan Tuttle

# PURPOSE OF PROJECT

This project takes two different datasets, one containing Gross Domestic Product by 
country and the other containing education statistics by country, and compares the two
based on country.  A series of questions are answered with last output comparing Gross
Domestic Product rankings to the income group of that country. 

# COPYRIGHT INFO

This project was generated for Southern Methodist University course MSDS 6306
Doing Data Science: An Introduction to Data Science to complete Case Study 1

*Datasets sources*

GDP.csv: https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv

EDDATA.csv: https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv

# FILE ORGANIZATION

____ <- signifies a folder (i.e. data <- = data folder)

"|" separates multiple files in the same folder (i.e. GDP.csv | EDDATA.csv) 

The original file structure is as follows:

  + ReadME.md

  + Makefile.txt

  + data <-

  + paper <- GDPandEducation_CaseStudy1.Rmd

  + source <- download.R | tidy_ED_GDP.R | merge_ED_GDP.R

*After running the Makefile in the command line...*

The file structure should be as follows:

  + ReadME.md
  
  + Makefile.txt
  
  + data <- GDP.csv | EDDATA.csv
  
  + paper <- GDPandEducation_CaseStudy1.Rmd | GDPandEducation_CaseStudy1.html | 
  GDPandEducation_CaseStudy1.md | GDPandEducation_CaseStudy1_files
             
    + GDPandEducation_CaseStudy1_files <- figure_html <- question 4-1.png | 
    question 4-2.png
  
  + source <- download.R | tidy_ED_GDP.R | merge_ED_GDP.R

# FILE INFO

README.md

  + md file containing the details of the project and how to reproduce it

 Makefile.txt
 
  + Text file to run in the command line to populate GDP.csv, EDDATA.csv, and 	GDPandEducation_CaseStudy1.html
	
GDP.csv

  + Comma separated data file containing the Gross Domestic Product and rank for each country
	
EDDATA.csv

  + Comma separated data file containing the income category for each country
	
 GDPandEducation_CaseStduy1.Rmd
 
  + R markdown file that generates the analysis and conclusion for the case study
	
GDPandEducation_CaseStudy1.html

  + html file that contains the analysis and conclusion of the case study
  
GDPandEducation_CaseStudy1.md

  + md file that contains the analysis and conclusion of the case study

question 4-1.png

  + png file that contains an image of the first plot for analysis question 4 in
  GDPandEducation_CaseStudy1.html
	
question 4-2.png

  + png file that contains an image of the second plot for analysis question 4 in
  GDPandEducation_CaseStudy1.html
  
download.R

  + R code file that downloads the GDP.csv and EDDATA.csv from the internet
	
tidy_ED_GDP.R

  + R code file that cleans up and tidies the GDP.csv and EDDATA.csv datasets
	
merge_ED_GDP.R

  + R code file that merges the GDP.csv and EDDATA.csv datasets

# DATA INFO

*GDP.csv*

_Variables used for study:_

CountryCode

  + Three letter code identifier for each country (char)
	
GDP.ranking

  + The rank of each country based on Gross Domestic Product (num)
	
GDP.Country

  + Full name of each country (char)
	
GDP

  + Gross Domestic Product for each country, in millions of US dollars (num)

_Unused variables:_

NONE

*EDDATA.csv*

_Variables used for study and their description:_

CountryCode

  + Three letter code identifier for each country (char)
	
Long.Name

  + Full name of each country (char)
	
Income.Group

  + The one of five income groups each country falls into: Low income, Lower middle income, upper middle income, High income: OECD, High income: nonOECD (char)
	
_Unused variables:_

Region

Lending.category

Other.groups

Currency.unit

Latest.population.census

Latest.housing.survey

Special.notes

National.accounts.base.year

National.accounts.reference.year

system.of.National.Accounts

SNA.price.valuation

Alternative.conversion.factor

PPP.survey.year

Balance.of.Payments.Manual.in.use

External.debt.Reporting.status

System.of.trade

Government.Accounting.concept

IMF.data.dissemination.standard

Source.of.most.recent.Income.and expenditure.data

Vital.registration.complete

Latest.agriculture.census

Latest.industrial data

Latest.trade.data

Latest.water.withdrawal.data

X2.alpha.code

WB.2.code

Table.Name

Short.Name

# HOW TO REPRODUCE RESEARCH

To reproduce the study download the project to the desired file path.  Open up the 
command line on your machine.  Navigate to the file path the project was downloaded to
in the command line.  Type 'make clean' in the command line.  Then type 'make all' in
the command line.  The remaining files along with the GDPandEducation_CaseStudy1.html
should be populated in the project's folder.

# SESSIONINFO()

R version 3.3.2 (2016-10-31)
Platform: x86_64-apple-darwin13.4.0 (64-bit)
Running under: macOS Sierra 10.12

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods  
[7] base     

loaded via a namespace (and not attached):
 [1] backports_1.0.4 magrittr_1.5    rprojroot_1.1 
 htmltools_0.3.5
 [5] tools_3.3.2     yaml_2.1.14     Rcpp_0.12.8     stringi_1.1.2
 [9] rmarkdown_1.3   knitr_1.15.1    stringr_1.2.0   digest_0.6.11
[13] evaluate_0.10  