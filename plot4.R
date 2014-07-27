# Across the United State, how have emissions from coal combusion-related sources changed from 1999-2008?

# Read data
SCC <- readRDS("Source_Classification_Code.rds")
coal.combustion.related.sources <- SCC[grepl("Coal$", SCC$SCC.Level.Three), ]

NEI <- readRDS("summarySCC_PM25.rds")
data <- aggregate(Emissions ~ SCC + year, NEI, sum)

# Load ggplot2
library(ggplot2)

# Create plot
png('plot4.png')
qplot(year, Emissions, data = subset(data, SCC %in% coal.combustion.related.sources$SCC), ylim=c(0, 1000), geom=c("point",  "smooth"), method="lm")
dev.off()