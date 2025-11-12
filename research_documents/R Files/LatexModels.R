install.packages("stargazer")
library(stargazer)
model1 <- lm(log(GovTrn2013) ~ ITP + IBE)
stargazer(model1, style = "apsr")
?stargazer
model1 <- lm(log(GovTrn2013) ~ ITP + IBE)
model2 <- lm(log(GovTrn2013) ~ ITP + IBE + pop + pctcity12 + GRPpc)
model3 <- lm(chggovtrn ~ ITP + IBE)
model4 <- lm(chggovtrn~ ITP + IBE +pop + pctcity12 + GRPpc)
model5 <- lm(chgpctdep ~ ITP + IBE)
model6 <- lm(chgpctdep ~ ITP + IBE + pop + pctcity12 + GRPpc)

stargazer(model5, model6, title = "Ideal Model Regressions")

f <- function(x) format(x, scientific=TRUE)
stargazer(model, apply.coef=T)

model7 <- lm(log(GovTrn2013) ~ ITP + IBE + pctputin + pop +pctcity12 + GRPpc) ## Electoral results appear to have no relation to 
model8 <- lm(log(GovTrn2013) ~ ITP + IBE + marginvic + pop +pctcity12 + GRPpc) ##government transfers from 2012 to 2013. Some evidence of IBE
model9 <- lm(log(GovTrn2013) ~ ITP + IBE + pctpopputin + pop +pctcity12 + GRPpc)

stargazer(model7, model8, model9, title = "Electoral Results Model")

model10 <- lm(chggovtrn ~ ITP + IBE + marginvic +  pop +pctcity12 + GRPpc)
model11 <- lm(chgpctdep ~ ITP + IBE + marginvic + pop +pctcity12 + GRPpc)
stargazer(model10, model11, title = "Electoral Results Model")

model.1<-lm(log(GovTrn2013) ~ ITP + IBE + Putinmeet)
model.2<-lm(log(GovTrn2013) ~ ITP + IBE + Putinvisit)
model.3<- lm(log(GovTrn2013) ~ ITP + IBE + Putineither) ##Jarocinska Model
model.4 <- lm(log(GovTrn2013) ~ ITP + IBE + Putineither + pop + pctcity12 + GRPpc)
model.5 <-lm(chggovtrn ~ ITP + IBE + Putineither + pop + pctcity12 + GRPpc)
model.6<-lm(chgpctdep ~ ITP + IBE + Putineither + pop + pctcity12 + GRPpc)
stargazer(model.1, model.2, model.3, title = "Jarocinska's Putin Visits Model")
stargazer(model.4, model.5, model.6, title = "Jarocinska's Putin Visits Model")

model.a <- lm(log(GovTrn2013) ~ TotProtest) ## New Model - Total government transfers in 2013 statistically significant
model.b <- lm(log(GovTrn2013) ~ TotProtest + ITP + IBE) ## when regressed on total protests in 2011-2012
model.c <- lm(log(GovTrn2013) ~ TotProtest + ITP + IBE + pop + pctcity12 + GRPpc)
stargazer(model.a, model.b, model.c, title = "Protest Model 1")

model.d <-lm(chggovtrn ~ TotProtest)
model.e <-lm(chggovtrn ~ TotProtest + ITP + IBE)
model.f <- lm(chggovtrn ~ TotProtest + ITP + IBE + pop +pctcity12 +GRPpc)
stargazer(model.d, model.e, model.f, title = "Protest Model 2")

model.21<-lm(chgpctdep ~ TotProtest) ##Statistically significant relationship between protests and regional dependence
model.22<-lm(chgpctdep ~ TotProtest + ITP + IBE) ##on intergovernmental transfers, quantified as proportion of 
model.23<-lm(chgpctdep ~ TotProtest + ITP + IBE + pop + pctcity12 + GRPpc)
stargazer(model.21, model.22, model.23, title = "Protest Model 3")
