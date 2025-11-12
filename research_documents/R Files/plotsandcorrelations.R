data3 <- read.csv("DataSet2.csv")
attach(data3)
cor(marginvic, chgpctdep)
cor(Putineither, chggovtrn)
plot(x = marginvic, y = pctdpngov2012)
plot(x = marginvic, y = pctdpngov2013)
plot(x = marginvic, y = chgpctdep)
cor(marginvic, pctchgtrn)
plot(x=marginvic, y = pctchgtrn)
plot(x= ITP, y =logGovTrn2013)
plot(x= IBE, y = logGovTrn2013)
cor(GovTrn2013, IBE)
logGovTrn2013 <- log(GovTrn2013)

cor(logGovTrn2013, IBE)
regress <- lm(logGovTrn2013 ~ IBE)
summary(regress)

cor(logGovTrn2013, Putineither)
regress2 <- lm(logGovTrn2013 ~ Putineither)
summary(regress2)

cor(pctchgtrn, GRPgrowth)
regress3 <- lm(pctchgtrn ~  GRPgrowth)
summary(regress3)

cor(chggovtrn, Eqabschg, use = "complete")
cor(EQ2013, GovTrn2013, use="complete")
cor(pctgov, GovTrn2012)
cor(poverty, GovTrn2013)


cor(chggovtrn, TotProtest, use = "complete")
cor(pctchgtrn, TotProtest, use = "complete")
regress <- lm(chggovtrn ~ TotProtest)
summary(regress)

regress2 <- lm(pctchgtrn ~ TotProtest)
summary(regress2)

logchggovtrn <- log(chggovtrn)
plot(x = TotProtest, y = pctchgtrn)

cor(chgpctdep, TotProtest)
regress3 <- lm(chgpctdep ~ TotProtest)
summary(regress3)

cor(TotProtest, pctchgtrn)
sd(TotProtest)

