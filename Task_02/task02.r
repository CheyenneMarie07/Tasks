setwd('//Users//cheyenneyoung//Desktop//Evolution//Tasks//Task_02')
Data <- read.csv('http://jonsmitchell.com/data/beren.csv',stringsAsFactors=F)
write.csv(Data,"rawdata.csv",quote=F)
length(Data)
nrow(Data)
ncol(Data)
print(Data)
head(Data)
colnames(Data)
Data[1, ]
Data[2, ]
Data[1:3, ]
Data[1:3, 4]
Data[1:5, 1:3]
Data[257, 1:3]
Feeds<- which(Data[ ,9]=="bottle")
berenMilk <- Data[Feeds,]
head(berenMilk)
nrow(berenMilk)
print(berenMilk)
Feeds<-which(Data[,"event"]=="bottle")
berenMilk1<-Data[Feeds,]
Feeds<-which(Data$event=="bottle")
berenMilk2<-Data[Feeds,]
berenMilk == berenMilk1
berenMilk1 == berenMilk2
berenMilk == berenMilk2

dayID<-apply(Data,1,function(x) paste(x[1:3],collapse="-"))

dateID<-sapply(dayID,as.Date,format="%Y-%m-%d",origin="2019-04-18")
Data$age<-dateID-dateID[which(Data$event=="birth")]
head(Data)
beren2 <- Data
beren3 <- beren2[order(beren2$age),]
head(Data)
head(beren2)
head(beren3)
write.csv(beren3,"berennew.csv",quote=F,row.name=FALSE)
#cd ~/Desktop/Evolution/Tasks
#git add -A
#git commit -m "Cheyenne Young Task 02 upload a"
#git push -u origin master

# start on task02b here







