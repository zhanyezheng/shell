library(readxl)
library(ggplot2)
library(dplyr)

setwd("~/project/CAGE_QTL/boxplot/tmp_boxplot/")
genoty <- read_xls("human_genoty.xls")
tpm <- read_tsv("tpm.txt")
#处理 CATG00000097075.1 基因
tpm1 <- tpm[1,]
tpm11 <- gather(tpm1,"id","tpm",1:87) 
tpm111 <- tpm11[c(3:87),]
g_t_75.1 <- inner_join(genoty,tpm111,by="id") %>% as.data.frame()
g_t_75.1$tpm <- as.numeric(as.character(g_t_75.1$tpm))
#g_t_75.1 <- g_t_75.1 %>% filter(tpm>0)
p<-ggplot(data=g_t_75.1, aes(x=genoty,y=tpm))+geom_boxplot(aes(fill=genoty))
p


tpm2 <- tpm[2,]
tpm22 <- gather(tpm2,"id","tpm",1:87) 
tpm222 <- tpm22[c(3:87),]
g_t_19.9 <- inner_join(genoty,tpm222,by="id")
g_t_19.9$tpm <- as.numeric(as.character(g_t_19.9$tpm))
p2<-ggplot(data=g_t_19.9, aes(x=genoty,y=tpm))+geom_boxplot(aes(fill=genoty))
p2


tpm3 <- tpm[3,]
tpm33 <- gather(tpm3,"id","tpm",1:87) 
tpm333 <- tpm33[c(3:87),]
g_t_4.14 <- inner_join(genoty,tpm333,by="id")
g_t_4.14$tpm <- as.numeric(as.character(g_t_4.14$tpm))
p3<-ggplot(data=g_t_4.14, aes(x=genoty,y=tpm))+geom_boxplot(aes(fill=genoty))
p3


tpm4 <- tpm[4,]
tpm44 <- gather(tpm4,"id","tpm",1:87) 
tpm444 <- tpm44[c(3:87),]
g_t_17.1 <- inner_join(genoty,tpm444,by="id")
g_t_17.1$tpm <- as.numeric(as.character(g_t_17.1$tpm))
p3<-ggplot(data=g_t_17.1, aes(x=genoty,y=tpm))+geom_boxplot(aes(fill=genoty))
p3
