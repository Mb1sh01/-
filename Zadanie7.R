data <- read.csv("data_ex-07.csv",stringsAsFactors = F,row.names = 1, sep = ",")
m.data <- rbind(data$налог_на_прибыль_организации,data$налог_на_доходы_физических_лиц,data$налогина_имущество,data$безвозмездные_поступления)
colnames(m.data) <- c("2005","2013","2017")
png("plot-ex07.png", width=600)
rownames(m.data) <- c("налог на прибыль организаций","налог на доходы физических лиц","налогина имущество","безвозмездныепоступления")
barplot(m.data,main="Тюменская область",col = topo.colors(4,alpha = 1), ylab="Тыс. руб." )
legend("bottomleft",
       legend=c("налог на прибыль организаций","налог на доходы физических лиц","налогина имущество","безвозмездные поступления"), 
       fill=topo.colors(4))
dev.off()
