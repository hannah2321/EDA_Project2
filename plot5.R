# How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?

# Read data
SCC <- readRDS("Source_Classification_Code.rds")
write.csv(SCC, "xxx.csv")
motor.vehicle.sources <- SCC[grepl("Vehicle", SCC$SCC.Level.Three), ]

NEI <- readRDS("summarySCC_PM25.rds")
NEI.Baltimore <- subset(NEI, fips=="24510")
data <- aggregate(Emissions ~ SCC + year, NEI.Baltimore, sum)

# Load ggplot2
library(ggplot2)

# Create plot
png('plot5.png')
qplot(year, Emissions, data = subset(data, SCC %in% motor.vehicle.sources$SCC), ylim=c(0, 50), geom=c("point",  "smooth"), method="lm")
dev.off()