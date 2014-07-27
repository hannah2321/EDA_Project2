# Of the four types of sources indicated by the type (point, nonpoint, onroad, nonraod) variable, which of these four sources have seen decreases in emissions from 1999-2008 for Baltimore City? Which have seen increases ine missions from 1999-2008? Use the ggplot2 plotting system to make a plot answer this question.

# Read data
NEI <- readRDS("summarySCC_PM25.rds")
NEI.Baltimore <- subset(NEI, fips=="24510")

# Load ggplot2 package
library(ggplot2)

# Create plot
png('plot3.png')
qplot(year, Emissions, data = NEI.Baltimore, ylim=c(0, 500), facets= . ~ type, geom=c("point",  "smooth"), method="lm")
dev.off()