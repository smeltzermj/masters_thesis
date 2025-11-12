(x-mean(x))/sd(x)


attach(data2)
ovTrn2013 ~ ITP + IBE
GovTrn2013.scaled <- (GovTrn2013-mean(GovTrn2013))/sd(GovTrn2013)
ITP.scaled <- (ITP-mean(ITP))/sd(ITP)
IBE.scaled <- (IBE-mean(IBE))/sd(IBE)
summary(lm(scale(GovTrn2013) ~ ITP.scaled + IBE.scaled + marginvic.scaled))
marginvic.scaled <- (marginvic-mean(marginvic))/sd(marginvic)
scale(data2)

?scale

scale(ITP)
ITP.scaled



summary(lm(chggovtrn ~ scale(TotProtest)))

summary(lm(chgpctdep ~ scale(TotProtest) + scale(ITP) + scale(IBE) + scale(pop) + scale(pctcity12) + scale(GRPpc)))
##a SD increase of X is associated with a (beta) increase in Y. If Y is also standardized, a SD increase in X is 
##associated with a (beta)*SD increase in Y. Since the variables have been scaled, those 
##covariates with larger standardized regression coefficients have a larger effect on the response variable.

summary(lm(chggovtrn ~ TotProtest + Putineither + marginvic))
summary(lm(scale(chggovtrn) ~ scale(TotProtest) + scale(Putineither) + scale(marginvic)))
summary(lm(scale(GovTrn2013) ~ scale(TotProtest) + scale(marginvic) + scale(TotProtest*scale(marginvic))))


pairs(~GovTrn2013 + TotProtest + marginvic)
regress <- lm(GovTrn2013 ~ TotProtest +marginvic, data = data2)
lev <- hat(model.matrix(regress))
plot(lev)
data2[lev > .5,]

plot(cooks.distance(regress))

data2[11,]
data.1 <- data2[-11,]
attach(data.1)

summary(lm(GovTrn2013 ~ TotProtest), data = data2)
data.1[11,]
regress.2 <- lm(GovTrn2013 ~ TotProtest +marginvic + Putineither, data= data.1)
lev2 <- hat(model.matrix(regress.2))
plot(lev2)
data.1[lev>.3,]
summary(lm(GovTrn2013 ~ TotProtest + marginvic +Putineither + ITP + IBE + pctrur12, data = data.1))
summary(lm(scale(GovTrn2013) ~ scale(TotProtest) + +scale(marginvic) + scale(Putineither) + scale(ITP) + scale(IBE) + scale(pctrur12), data = data.1))
summary(lm(scale(GovTrn2013) ~ scale (TotProtest)), data = data.1)
?hat
.6336 * sd(GovTrn2013)
sd(TotProtest)
pairs(~scale(GovTrn2012)+ scale(TotProtest)+ scale(pctrur12))
