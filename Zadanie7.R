data <- read.csv("data_ex-07.csv",stringsAsFactors = F,row.names = 1)
m.data <- rbind(data$налог.на.прибыль.организации,data$налог.на.доходы.физических.лиц,data$налогина.имущество,data$безвозмездныепоступления)
colnames(m.data) <- c("2005","2013","2017")
png("plot-ex07.png", width=600)
rownames(m.data) <- c("налог на прибыль организаций","налог на доходы физических лиц","налогина имущество","безвозмездныепоступления")
barplot(m.data,main="Гистограмма",col = topo.colors(4,alpha = 1) )
legend("bottomleft",
       legend=c("налог на прибыль организаций","налог на доходы физических лиц","налогина имущество","безвозмездные поступления"), 
       fill=topo.colors(4))
dev.off()