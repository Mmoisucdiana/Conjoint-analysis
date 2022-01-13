library(conjoint)
library(clusterSim)
library(AlgDesign)


 library(conjoint)
data(tea)
ls()


print(tprof)
print(tsimp)
print(tlevn)
tpref[1:78,]
head(tprefm)
caModel(y=tprefm[1,], x=tprof)

caUtilities(y=tprefm[1,], x=tprof, z=tlevn)

caPartUtilities(y=tpref, x=tprof, z=tlevn)

Conjoint(y=tpref, x=tprof, z=tlevn)

caImportance(y=tpref, x=tprof)

caTotalUtilities(y=tpref, x=tprof)

colnames(tprefm)<-cbind(paste("prof",1:13,sep=""))
tprefm[1:5,]


ShowAllUtilities(y=tprefm,x=tprof, z=tlevn)


#cluster<- caSegmentation(y=tpref, x=tprof, c=3)
#plotcluster(cluster$util,cluster$sclu)

ShowAllSimulations(sym=tsimp, y=tpref, x=tprof)

#Functia caRankToScore() transforma datele de tip ranguri în scoruri necesare pentru aplicarea analizei conjoint.
library(conjoint)
data(ice)
preferences<-caRankToScore(ipref)
Conjoint(preferences, iprof, ilevn)
