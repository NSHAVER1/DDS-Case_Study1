#merge the GDP and EDDATA datasets by country code, call the merged dataset combo, sort by CountryCode
combo<-merge(GDP2,EDDATA, by="CountryCode", all=TRUE, SORT=TRUE)

#count the number of missing Long.Name(orignally from the education data) to see how many country codes didn't match
#from the GDP dataset
sum(is.na(combo$Long.Name))

#count the number of missing GDP.Country rows in the combo dataset to see how many country codes didn't match from the 
#education dataset
sum(is.na(combo$GDP.Country))

#now make a dataset excluding the rows that were missing in the other dataset
combo2<-subset(combo,!is.na(Long.Name) & !is.na(GDP.Country))

