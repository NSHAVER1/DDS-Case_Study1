#clean up the GDP data-delete the first 5 rows and only the columns with data and then add back the headers
GDP2<-GDP[-(1:5),c(1,2,4,5)]
names(GDP2)<-c("CountryCode","GDP.ranking","GDP.Country","GDP")

#delete the rows with Country Codes that are blank
GDP2<-subset(GDP2, CountryCode!="")

#remove all rows with GDP.ranking is blank so we get only the first 190 rows as specified in the instructions
GDP2<-subset(GDP2,GDP2$GDP.ranking!="" )

#make the rankings into numbers, not characters
GDP2$GDP.ranking<-as.numeric(GDP2$GDP.ranking)

#make the GDP column into a number, not characters by first replacing the commas then forcing it to be numeric
GDP2$GDP<-as.numeric(gsub(",", "", GDP2$GDP))


#count the number of NA in ranking and GDP
sum(is.na(GDP2$GDP.ranking))
sum(is.na(GDP2$GDP))

#clean up the EDDATA
#no clean up needed for our analysis
