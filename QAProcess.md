# Check list for QA process 
- [ ] Introduction To Project
	- [x] (*nshaver*) Does the document have an introduction?
	- [ ] (*nshaver*) Is it formed corectly and properly described? nshaver: Intro should say "In this study, we will examine the Gross Domestic Product (GDP) rankings for countries across the world and analyze the relationship between GDP and income groups. We will order the countries by GDP and evaluate the average GDP ranking for different income groups, visualize the GDP data for all countries by income group, and examine the relationship between income group and GDP. The analysis will utilize GDP and income group from the data-catalog at the world bank web site."
	- [x] (*nshaver*) Does it provide context? nshaver: title should be changed to "Study of GDP and Income Level Data from the World Bank"
	[ ] Spelling and Grammar? nshaver: need a comma after study in the intro
- [ ] Code Section
	- [ ] Correctly commented? nshaver: Need to remove the commennt in the .rmd file, line 13, which shows my old working dir. Need to add more comments to the code in Q4 to make the plot. See commments in next section about 
	- [x] (*nshaver*) *modular* style?
	- [x] Is the code well written? 
	- [x] (*nshaver*) Does it compile in R? 
	- [ ] Does it build with make? 
- [ ] Brief Explanation
	- [ ] Is it written well? (*nshaver*) Reading the word document requirements again, I think we need to rework the commenting for the code chunks in the .rmd file. Right now we have comments at each part, but he explicitly says "have a sentance or 2 before or after the code chunks". Q1 is fine as is. Q2 should change to "#The code below sorts the combo2 table containing GDP, GDP.ranking, and  Country in ascending order by GDP, and then displays the 13th row".
	- [ ] Spelling and Grammar?
- [ ] Answers 
	- [ ] Are the answers clear?
	- [x] Are the answers correct? (*nshaver*): I like the plot for question 4, but the x-axis should have units--the GDP is reported in millions of US dollars. Here is my suggestion for the answer to the question--"Plotting the GDP for all of the countries and coloring by Income.Group, we notice that the "Low Income" and "Lower middle Income" groups tend to have lower GDP's than "High Income" groups. Additionally, countries part of the OECD have higher GDP than those that are not part of the OECD. Vizualizing the data in this way also enables us to see the outliers in each Income Group--USA and China have higher GDPs than most of their respective groups, while Tuvalu (TUV) has a lower GDP than the rest of it's income group. For question 5, we need a bit more verbiage to explain the table. I suggest adding this "The table below shows the Income Groups along the side and the GDP rank groups across the top, with the number of countries meeting both conditions in each cell of the table. The groups are defined as G0_to_20 being the 1st to 20th percentile by GDP ranking, G20_to_40 is >20th percentile to 40th percentile, etc. Thus, we see that there are a total fof 38 nations in the top 1/5th of the GDP ranking, and 5 nations within that top GDP ranking group that are classified as "Lower middle income" For Q3, we should add something like "The table below summarizes the average GDP ranking for the "High Income: OECD" and "High Income: nonOECD" groups."
	- [x] (*nshaver*) Q5 is not the right version of the answer--cose is wrong and the answer should be 5. 
	- [x] (*nshaver*) Q1 is wrong as we need the correct version of cleanup_ED_GDP.R--the right version removes the unranked countries
	- [ ] Spelling and Grammar?
- [ ] Conclusion
	- [ ] Does it summarize findings from the excercise in paragraph form? nshaver: I struggled with making conclusions from this random set of statistics and graphs. Here is my stab at a conclusion "In this study of GDP and income levels, using data from the World Bank, we find that there are 189 countries from which we can make conclusions about the GDP and income levels. The High.Income: nonOECD groups have an average ranking of 91.91, while the High.Income: OECD groups have an average ranking of 32.97. Thus, within a given income group, being a member of the OCED leads to lower GDP ranking (higher GDP). Of the 38 countries with the highest GDP, five of them are classified as “Lower Middle Income”. Examining GDP by country code shows many countries have a GDP between 175 million and 3 trillion dollars, and generally countries in the "Low Income" income groups have lower GDP than countries in the "High Income” income groups. Also, countries that are members of the OECD tend to have higher GDP than non-member countries."
	- [ ] Spelling and Grammar?
- [ ] GitHub Items
  - [x] (*nshaver*) Is it able to get from GitHub on a virgin machine and build? 
  - [x] (*nshaver*) Will it run on a Mac or PC without modifications?
  nshaver: File does not properly keep the .md file. Need to change top section of rmd file to keep the md file and upload all of the files created when you knit it.
- [ ] Readme file 
	- [ ] spelling and grammar
	- [ ] session info captured
	- [ ] all key columns and units described nshaver: in an attempt to add session info and units to GDP, I seem to have broken the formatting. sorry...
	- [ ] info of how to create the output is correct 
	- [ ] describes project purpose, title, copyright info, folder organization nshaver: title should be:"Study of GDP and Income Level Data from the World Bank"
	nshaver-is the makefile deleting everything we need it to? the .md file isn't getting cleaned
	 
