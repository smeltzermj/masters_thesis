data5 <- read.csv("DataSet2.csv")
attach(data5)
cor(pctdpngov2013, pctrur12)
cor(chgpctdep, pctrur12)
cor(pctdpngov2013, pctcity12)
regress.i <- lm(chgpctdep ~ TotProtest)
summary(regress.i)
cor(chgpctdep, pctcity12)
cor(TotProtest, pctcity12)
plot(x=pctcity12, y=chgpctdep)

cor(TotProtest, pctcity12)
plot(TotProtest, pctcity12)
plot(pctcity12, TotProtest)

regress.s <- lm(pctchgtrn ~ TotProtest + pctcity12 + GRPpc + GRPgrowth + IBE + poverty + pop + marginvic)
summary(regress.s)




cor(chgpctdep, marginvic)
cor(pctchgtrn, TotProtest)
cor(pctchgtrn, marginvic)
cor(pctchgtrn, pctcity12)
cor(pctchgtrn, GRPgrowth)
regress.r <- lm(pctchgtrn ~ TotProtest)
summary(regress.r)

?lm
cor(EQ2013, GovTrn2013, use = "complete")

avg()
?average

logprotest <- log(TotProtest)
regress.g <- lm(pctchgtrn ~ logprotest)


log2 <- function(x) ifelse(x <= 0, 0, base::log(x))
model2 <- lm(pctchgtrn ~ log2(TotProtest))
summary(model2)



mean(pctdpngov2013)
mean(pctdpngov2012)
mean(pctchgtrn)
sum(GovTrn2013)
sum(GovTrn2012)
