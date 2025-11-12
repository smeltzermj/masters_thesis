data2 <- read.csv("DataSet2.csv")
attach(data2)
cor(Eqrelch, pctpopputin, use = "complete")
plot(x= Putineither, y = Eqrelch)
cor(ITP, IBE, use = "complete")
regress <- lm(Eqrelch ~ ITP + IBE + IBE*ITP)
summary(regress)

cor(ITP, Eqabschg, use= "complete")
cor(ITP, EQ2013, use = "complete")  

regress <- lm(EQ2013 ~ ITP + pop + IBE) ##The total amount of subsidies does seem to depend on ITP, IBE, and total population
summary(regress) ##But this answer is obvious. What's less obvious is how dependent the  change of total subsidies
                 ## is on ITP, IBE, and total population.
regress2 <- lm(Eqabschg ~ ITP + IBE + pop)
summary(regress2)   ## While still significant, the P-value is larger, suggesting that there might be another factor 
                    ## involved in determining this change. Let's now look at relative change to the previous year.
regress3 <- lm(Eqrelch ~ ITP + IBE +pop)
summary(regress3) ## With relative change, the P-value is getting even larger! Let's try adding in another variable
                  ## like GRP growth
regress4 <- lm(Eqrelch ~ ITP + IBE + pop + GRPgrowth)
summary(regress4)  ## When adding GRP growth, IBE is no longer significant. 

regress5 <- lm(Eqabschg ~ ITP + IBE + pop + GRPgrowth)
summary(regress5) ##GRP growth doesn't seem to play a factor in the change in subsidies. The goverment doesn't seem to
                  ## take that into account (UNLESS IT'S ALREADY INCLUDED IN THE CALCULATIONS OF EITHER IBE OR ITP)

regress6 <- lm(Eqabschg ~ ITP + IBE + pop + pctgov)
summary(regress6) ##After adding in the percent of the population that is in government employment, we see that each
                  ## each variable is significant at least when p-value < .1

regress6 <- lm(Eqrelch ~ ITP + IBE + pctgov)
summary(regress6)
library(car)
qqPlot(regress6)








regress.1 <- lm(Eqrelch ~ ITP + IBE + marginvic)
qqPlot(regress.1)
plot(x = Putineither, y = Eqabschg)
