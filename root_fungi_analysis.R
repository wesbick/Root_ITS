library(permute); library(vegan)

orddata <- read.table(file="AllChips.combined.trim.good.unique.pick.UNITEv6_sh_99_s.wang.pick.tx.1.subsample.shared1.txt", sep="	", header=T)
dim(orddata)
data <- orddata$Group
data
ord <- orddata[ ,4:254]

head(orddata)
orddata$Group
data <-data.frame(Rep= c(1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,1,2,3,1,3,4,5,2,3,4,5,1,2,3,1,2,3,1,2,3,1,3,1,1,1,2,3,1,2,3,1,1), data)
data <-data.frame(Lineage= c("Inv", "Inv","Inv", "Inv","Inv", "Inv","Nat", "Nat","Nat", "Nat","Nat", "Nat", "Inv", "Inv", "Inv", "Nat", "Nat", "Nat", "Inv", "Inv", "Inv", "Inv", "Nat", "Nat", "Nat", "Nat", "Inv", "Inv", "Inv", "Nat", "Nat", "Nat", "Inv", "Inv", "Inv", "Nat", "Nat", "Inv", "Nat", "Inv", "Inv", "Inv", "Nat", "Nat", "Nat", "Inv", "Nat"), data)
data <-data.frame(Site= c("BL", "BL","BL", "BL","BL", "BL","BL", "BL","BL", "BL","BL", "BL", "CB", "CB", "CB", "CB", "CB", "CB", "CH", "CH", "CH", "CH", "CH", "CH", "CH", "CH", "CM", "CM", "CM", "CM", "CM", "CM", "CR", "CR", "CR", "CR", "CR", "PLB", "PLB", "Rt2", "Rt2", "Rt2", "Rt2", "Rt2", "Rt2", "SB", "SB"), data)


head(ord)
data

permfungi <- adonis(ord ~ Site * Lineage, data=data)
permfungi