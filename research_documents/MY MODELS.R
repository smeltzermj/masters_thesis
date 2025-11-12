getwd()
data <- read.csv("DataSet2.csv")
attach(data)

summary(data)

summary(lm(GovTrn2013 ~ ITP + IBE)) ##Ideal Model
summary(lm(log(GovTrn2013) ~ ITP + IBE))
summary(lm(log(GovTrn2013) ~ ITP + IBE + pop + pctcity12 + GRPpc))
summary(lm(chggovtrn ~ ITP + IBE))
summary(lm(chggovtrn~ ITP + IBE +pop + pctcity12 + GRPpc))
summary(lm(chgpctdep ~ ITP + IBE))
summary(lm(chgpctdep ~ ITP + IBE + pop + pctcity12 + GRPpc))

 ##Treisman and Popov Models testing the effect of electoral results
summary(lm(log(GovTrn2013) ~ ITP + IBE + pctputin)) ## Electoral results appear to have no relation to 
summary(lm(log(GovTrn2013) ~ ITP + IBE + marginvic)) ##government transfers from 2012 to 2013. Some evidence of IBE
summary(lm(log(GovTrn2013) ~ ITP + IBE + pctpopputin)) ##but it disappears when adding in other controls
summary(lm(log(GovTrn2013) ~ ITP + IBE + marginvic + pop +pctcity12 + GRPpc))
summary(lm(chggovtrn ~ ITP + IBE + marginvic +  pop +pctcity12 + GRPpc))
summary(lm(chgpctdep ~ ITP + IBE + marginvic + pop +pctcity12 + GRPpc))


summary(lm(log(GovTrn2013) ~ ITP + IBE + Putinmeet))
summary(lm(log(GovTrn2013) ~ ITP + IBE + Putinvisit))
summary(lm(log(GovTrn2013) ~ ITP + IBE + Putineither)) ##Jarocinska Model
summary(lm(log(GovTrn2013) ~ ITP + IBE + Putineither + pop + pctcity12 + GRPpc))
summary(lm(chggovtrn ~ ITP + IBE + Putineither + pop + pctcity12 + GRPpc))
summary(lm(chgpctdep ~ ITP + IBE + Putineither + pop + pctcity12 + GRPpc))

summary(lm(log(GovTrn2013) ~ TotProtest)) ## New Model - Total government transfers in 2013 statistically significant
summary(lm(log(GovTrn2013) ~ TotProtest + ITP + IBE)) ## when regressed on total protests in 2011-2012
summary(lm(log(GovTrn2013) ~ TotProtest + ITP + IBE + pop + pctcity12 + GRPpc))
summary(lm(log(GovTrn2013) ~ TotProtest + ITP + IBE + pop + pctcity12 + GRPpc))

summary(lm(chggovtrn ~ TotProtest)) #More convincing (higher R-Squared) when looking at the relationship betwwen protests
summary(lm(chggovtrn ~ TotProtest + ITP + IBE)) ## in 2011-2012 and the change in transfers from 2012 to 2013
summary(lm(chggovtrn ~ TotProtest + ITP + IBE + pop + pctcity12 + GRPpc))

summary(lm(chgpctdep ~ TotProtest)) ##Statistically significant relationship between protests and regional dependence
summary(lm(chgpctdep ~ TotProtest + ITP + IBE)) ##on intergovernmental transfers, quantified as proportion of 
summary(lm(chgpctdep ~ TotProtest + ITP + IBE + pop + pctcity12 + GRPpc)) ##transfers to total regional income
## Seems to signify an increase in centralization in 2013 in those regions with protests in 2011-2012
