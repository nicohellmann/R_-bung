library(readxl)
Einkommen <- read_xlsx("R_-bung/R-Übung/Einkommen.xlsx",sheet = 1)
View(Einkommen$`Bevölkerung in Hauptwohnsitzhaushalten`)
View(Einkommen)
vector_BIH <- Einkommen$`Bevölkerung in Hauptwohnsitzhaushalten`[3:41]
vector_BIH <- vector_BIH[-c(13,26,39)]
BIH <- median(vector_BIH)
modus_BIH <- sort(vector_BIH)[1]
vector_BIH_männlich <- vector_BIH[4:12]
vector_BIH_weiblich <- vector_BIH[17:28]
boxplot(vector_BIH_männlich,vector_BIH_weiblich,axes = TRUE,ylab = "Einkommen",names=c("Männlich","Weiblich"),staplewex = 1)
