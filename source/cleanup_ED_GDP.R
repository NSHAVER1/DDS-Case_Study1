#clean up the GDP data-delete the first 5 rows and only the columns with data and then add back the headers
GDP2<-GDP[-(1:5),c(1,2,4,5)]
names(GDP2)<-c("CountryCode","GDP.ranking","GDP.Country","GDP")

#delete the rows with Country Codes that are blank
GDP2<-subset(GDP2, CountryCode!="")


#make the rankings into numbers, not characters
GDP2$GDP.ranking<-as.numeric(GDP2$GDP.ranking)

#No Ranking can be quantified if it does not exist. Ranking will only be included for existing lines

#make the GDP column into a number, not characters by first replacing the commas then forcing it to be numeric
GDP2$GDP<-as.numeric(gsub(",", "", GDP2$GDP))

combo<-merge(GDP2,EDDATA, by="CountryCode", all=TRUE, SORT=TRUE)

#count the number of NA in ranking and GDP
sum(is.na(GDP2$GDP.ranking))
sum(is.na(GDP2$GDP))

# The number of rows that are not NA
sum(!is.na(GDP2$GDP.ranking))

# Remove extra letters and characters
combo$Income.Group<- gsub(":.*", "", combo$Income.Group)

# Fix names to be properly capitalized
combo$Income.Group[combo$Income.Group == "High income"] <- "High Income"
combo$Income.Group[combo$Income.Group == "Low income"] <- "Low Income"
combo$Income.Group[combo$Income.Group == "Lower middle income"] <- "Lower Middle Income"
combo$Income.Group[combo$Income.Group == "Upper middle income"] <- "Upper Middle Income"

#Generate array of Income Groups
arrayOfIncomeGroups <- unique(combo$Income.Group)

# Now I will pass this to an apply function that will generate a table of quantiles based on the following array
# Form a table of quantiles from each group of income class and put this in a table
# there is a way to do this with lapply, not sure how to construct a table from its output

gdpGroups <- combo[which(!is.na(combo$GDP.ranking)),]


# Breaking the GDP ranking into 5 separate quantile groups, and then summarizing the Income Groups, 
#  we see, as shown in the table below, that xxxx countries are in the 
#  "Lower Middle Income" Group but among the 38 nations with the highest GDP.

# Break into quantiles by income group
tableOfGroups <- as.table(
  tapply(gdpGroups$GDP.ranking,
         gdpGroups$Income.Group,
         quantile))

gdpGroups$GDP.quant.group[gdpGroups$GDP.ranking <20] <-"G0_to_20"
gdpGroups$GDP.quant.group[gdpGroups$GDP.ranking >=20 & gdpGroups$GDP.ranking <40 ] <-"G20_to_40"
gdpGroups$GDP.quant.group[gdpGroups$GDP.ranking >=40 & gdpGroups$GDP.ranking <60 ] <-"G40_to_60"
gdpGroups$GDP.quant.group[gdpGroups$GDP.ranking >=60 & gdpGroups$GDP.ranking <80 ] <-"G60_to_80"
gdpGroups$GDP.quant.group[gdpGroups$GDP.ranking >=80 & gdpGroups$GDP.ranking <100 ] <-"G80_to_100"
                         
incomeGroupsQuantized <- data.frame(table(gdpGroups$Income.Group,gdpGroups$GDP.quant.group))
incomeGroupsQuantized[incomeGroupsQuantized$Var1 =="Lower Middle Income",]

