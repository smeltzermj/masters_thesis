attach(data)
nor.govtrn2013 <- (GovTrn2013-min(GovTrn2013))/(max(GovTrn2013)-min(GovTrn2013))
plot(nor.govtrn2013, 1:length(nor.govtrn2013))
?plot
nor.totprot <- (TotProtest-min(TotProtest))/(max(TotProtest)-min(TotProtest))
summary(lm(nor.govtrn2013 ~ nor.totprot))
plot(cooks.distance(lm(nor.govtrn2013 ~ nor.totprot)))
?cooks.distance

?cooks.distance
??normal


cooks.distance