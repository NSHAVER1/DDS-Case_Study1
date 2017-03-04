#clean up the GDP data-delete the first 5 rows and only the columns with data and then add back the headers
GDP2<-GDP[-(1:5),c(1,2,4,5)]
names(GDP2)<-c("CountryCode","GDP.ranking","GDP.Country","GDP")

#delete the rows with Country Codes that are blank
GDP2<-subset(GDP2, CountryCode!="")


#make the rankings into numbers, not characters
GDP2$GDP.ranking<-as.numeric(GDP2$GDP.ranking)

#No Ranking can be quantified if it does not exist. Ranking will only be included for existing lines

combo<-merge(GDP2,EDDATA, by="CountryCode", all=TRUE, SORT=TRUE)

#make the GDP column into a number, not characters by first replacing the commas then forcing it to be numeric
GDP2$GDP<-as.numeric(gsub(",", "", GDP2$GDP))

#count the number of NA in ranking and GDP
sum(is.na(GDP2$GDP.ranking))
sum(is.na(GDP2$GDP))

# Remove extra letters and characters
combo$Income.Group<- gsub(":.*", "", combo$Income.Group)

# Fix names to be properly capitalized
combo$Income.Group[combo$Income.Group == "High income"] <- "High Income"
combo$Income.Group[combo$Income.Group == "Low income"] <- "Low Income"
combo$Income.Group[combo$Income.Group == "Lower middle income"] <- "Lower Middle Income"
combo$Income.Group[combo$Income.Group == "Upper middle income"] <- "Upper Middle Income"

#combo$Income.Group[combo$Income.Group == "Lower Middle Income" & !is.na(combo$Income.Group)]

# Now I will pass this to an apply function that will generate a table of quantiles based on the following array
arrayOfIncomeGroups <- unique(combo$Income.Group)

#TODO
combo2 <- combo[which(!is.na(combo$GDP.ranking)),]
lapply(combo$Income.Group[arrayOfIncomeGroups],function(x) { quantile(x,na.rm = TRUE)})

