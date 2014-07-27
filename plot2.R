# Have total emissions from PM2.5 decreased in Balimtore City, Maryland (fips=="24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

# Read dataset
NEI <- readRDS("summarySCC_PM25.rds")

# Create plot
png('plot2.png')
boxplot(Emissions ~ year, data = subset(NEI, fips == "24510"), col = "green", outline=F)
dev.off()