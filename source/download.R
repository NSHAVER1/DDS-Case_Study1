#download the 2 files
dir<-getwd()
#dir<- "C:/Users/in805/Documents/Code/DDS-Case_Study1"
file1<-paste(dir,"/data/GDP.csv",sep="")
file2<-paste(dir,"/data/EDSTATS.csv",sep="")
if(!file.exists(file1) | !file.exists(file2))
{
  downloader::download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile=paste(dir,"/data/GDP.csv",sep=""))
  downloader::download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile=paste(dir,"/data/EDSTATS.csv",sep=""))
}

#assign the two files to dataframes-replace blanks with NA
GDP<-read.csv(file1,stringsAsFactors=FALSE, header=FALSE,skip=5)
#names(GDP) <- c("Country","Ranking","V3","Dollars")
names(GDP)<-c("CountryCode","GDP.ranking","V3","GDP.Country","GDP","Seg?")

#Remove thrid cloumn as it is not used
GDP$V3<-NULL


#Data seems to 
EDDATA<-read.csv(file2,stringsAsFactors=FALSE, header=TRUE, na.strings=c(""))