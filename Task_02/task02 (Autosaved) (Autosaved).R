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
#Hypothesis III is testable.
#The other two are not testable because there is not enough information to assume the two. 
Feeds <- which(beren3$event == "bottle")
avgMilk <- mean(beren3$value[Feeds]
avgFeed <- tapply(beren3$value [Feeds], beren3$age[Feeds], mean)
varFeed <- tapply(beren3$value[Feeds], beren3$age[Feeds], var)
totalFeed <- tapply(beren3$value[Feeds], beren3$age[Feeds], sum)
numFeeds <- tapply(beren3$value[Feeds], beren3$age[Feeds], length)
cor(beren3$value[Feeds], beren3$age[Feeds])
cor.test(beren3$value[Feeds], beren3$age[Feeds])
berenCor <- cor.test(beren3$value[Feeds], beren3$age[Feeds])
summary(berenCor)
berenANOVA <- aov(beren3$value[Feeds] ~ beren3$caregiver[Feeds])
boxplot(beren3$value[Feeds] ~ beren3$caregiver[Feeds], xlab= "who gave the bottle", ylab = "amount of milk consumed (oz)")
?par
par(las=1, mar=c(5,5,1,1), mgp=c(2, 0.5, 0), tck=-0.01)
plot(as.numeric(names(totalFeed)), totalFeed, type="b", pch=16, xlab="age in days", ylab="ounces of milk")
abline(h=mean(totalFeed), lty=2, col='red')
pdf("r02b-totalMilkByDay.pdf", height = 4, width = 4)
par(las=1, mar=c(5,5,1,1), mgp=c(2, 0.5, 0), tck=-0.01)
plot(as.numeric(names(totalFeed)), totalFeed, type="b", pch=16, xlab="age in days", ylab="ounces of milk")
abline(h=mean(totalFeed), lty=2, col='red')
dev.off()
#The data on the graph is too close together to analyze the data points being graphed.
source("http://jonsmitchell.com/code/plotFxn02b.R")
#New testable hypothesis that there is a correlation between the amount of solid food Beren eats and the bowel movements that are made or that there is a correlation with the amount of bottles of milk Beren consumes and the naps he takes.
unique(beren3$event)

Hypothesis: As Beren's age increases, his total number of skills increase.
Skills <-which(beren3$event == "skill_crawl_army", "skill_situp_partial", "skill_pullup", "skill_pullup_regularly", "skill_crawl_full", "skill_step", "skill_walking", "skill_sentence", "skill_self_reference", "skill_count")
Skills <- which(Data[ ,9] == 'skill')
Skills <- which(Data$event == 'skill') 
dayID<-apply(Data,1,function(x) paste(x[1:3],collapse="-"))
dateID<-sapply(dayID,as.Date,format="%Y-%m-%d",origin="2019-04-18")
Data$age <-dateID - dateID[which(Data$event == 'birth')]
head(Data)
beren2 <- Data
beren3 <- beren2[order(beren2$age),]
head(Data)
head(beren2)
head(beren3)
write.csv(beren3,"berennew.csv",quote=F,row.name=FALSE)
Skills <- which(beren3$event == "skill")
avgAge <- mean(beren3$value[Skills])
aveAge <- tapply(beren3$value[Skills], beren3$age[Skills], mean)
varSkills <- tapply(beren3$value[Skills], beren3$age[Skills], var)
totalSkills <- tapply(beren3$value[Skills], beren3$age[Skills], sum)
numSkills <- tapply(beren3$value[Skills], beren3$age[Skills], length)
cor(beren3$value[Skills], beren3$age[Skills])
cor.test(beren3$value[Skills], beren3$age[Skills])
berenCor <- cor.test(beren3$value[Skills], beren3$age[Skills])
summary(berenCor)
berenANOVA <- aov(beren3$value[Skills] ~ beren3$caregiver[Skills])
boxplot(beren3$value[Skills] ~ beren3$caregiver[Skills], xlab= "who recorded beren skills", ylab= "skill aquired")
plot(as.numeric(names(totalSkills)), totalSkills, type="b", pch=16, xlab="age in days", ylab="number of skills")