# Have total emissions from PM2.5 decreased in the US from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008. Upload a PNG file containing your plot addressing this question.

# Set working directory
# setwd("C:/Users/hmdrake/Desktop/Coursera/Exploratory Data Analysis/Week 3/data")

# Read files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Create plot
png('plot1.png')
boxplot(Emissions ~ year, data = NEI, col = "cornflowerblue", outline=F)
dev.off()