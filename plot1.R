file<-"/home/swarnendu/Data Science/exploratory_data_analysis/week1/household_power_consumption.txt"
dataC<-read.csv(file,sep=";",header = T, na.strings="?",nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
#head(dataC)
dataC$date<-as.Date(dataC$Date,format="%d/%m/%Y")
subdata<-subset(dataC,subset=(Date>="2007-02-01" & Date<="2007-02-02"))
datetime <- paste(as.Date(subdata$Date), subdata$Time)
subdata$Datetime <- as.POSIXct(datetime)

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()