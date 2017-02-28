#libraries required to download the data
#install.packages("downloader")
library(downloader)

#set the working directory
setwd("C:\\Users\\nmsha\\Documents\\SMU\\DoingDataScience\\homework\\CaseStudy1")
dir<-getwd()

#download the 2 files
downloader::download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile=paste(dir,"/data/GDP.csv",sep=""))
downloader::download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile=paste(dir,"/data/EDSTATS.csv",sep=""))

#This is a dummy line to test github merging -Jack Nelson

#assign the two files to dataframes-replace blanks with NA
GDP<-read.csv("data/GDP.csv",stringsAsFactors=FALSE, header=FALSE)
EDDATA<-read.csv("data/EDSTATS.csv",stringsAsFactors=FALSE, header=TRUE, na.strings=c(""))