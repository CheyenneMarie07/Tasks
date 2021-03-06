text.string<- "(((((((cow, pig) ,whale), (bat, (lemur, human))),(robin, iguana)), coelacanth), (gold_fish, trout)), shark);"
vert.tree<-read.tree(text=text.string)
library(phytools)
library(ape)
library(maps)
library(phytools)
plot(vert.tree, edge.width=2)
nodelabels(frame="circle", bg='white', cex=1)
#Q1: The shark is a closer relative of the gold fish.
vert.tree
#Q2: No branch lengths in this tree.
str(vert.tree)
tree<-read.tree(text="(((A,B) ,(C,D)) ,E) ;")
plotTree(tree, offset=1)
tiplabels(frame="circle", bg='lightblue', cex=1)
nodelabels(frame="circle", bg='white', cex=1)
tree$tip.label
tree$edge
AnolisTree<-force.ultrametric(read.tree("https://jonsmitchell.com/data/anolis.tre"))
par(las=1)
hist(AnolisTree$edge.length, col='black', border='white', main="", xlab="edge lengths for the Anolis tree", ylim=c(0,50), xlim=c(0,6))
tipEdges<-which(AnolisTree$edge[,2] <= Ntip(AnolisTree))
Lengths<- AnolisTree$edge.length
names(Lengths) <- AnolisTree$tip.label
names(Lengths)[which(Lengths == min(Lengths))]
plot(AnolisTree, cex=0.25)
Labs<-sapply(AnolisTree$edge.length, round, digits=2)
edgelabels(text=Labs, cex=0.25)
?plot.phylo
#Q3:
plot(AnolisTree, cex=0.25, show.tip.label=FALSE)
#Q4:
plotTree (AnolisTree, type="fan", fsize=1, lwd=1, ftype="i")
#Q5: 
plot(AnolisTree, cex=0.25, tip.color=c('red'))
#Q6-8: 
AnolisTree<- force.ultrametric(read.tree("https://jonsmitchell.com/data/anolis.tre"))
#Q10:
AnolisTree<-force.ultrametric(read.tree(https://jonsmitchell.com/data/anolis.tre"))
fit.bd(AnolisTree,b,d,rho=0.2)
#Q10 = ML(b/lambda)=0.8031, ML(d/mu) = 0, log(L) = 132.9163



 