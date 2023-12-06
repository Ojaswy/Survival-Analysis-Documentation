#inputting raw data
dec12=read.csv('dec13.csv',head=T)

library(survival)
kkk=survfit(Surv(t_Rx_based_origin,ac_death)~exp_Oxali,data=dec12)
plot(kkk)

fm1=coxph(Surv(t_Rx_based_origin,ac_death)~exp_Oxali,data=dec12)
fm2=coxph(Surv(t_Rx_based_origin,ac_death)~exp_Oxali+SEER_agedx+male,data=dec12)

library(timereg)
 
# u is the endo variable
 u=dec12$exp_Oxali
# xo include age and sex
 xo=cbind( dec12$SEER_agedx,dec12$male)
# defining failure outcome
  Y=dec12$t_Rx_based_origin
  delta=dec12$ac_death

# naive model
fm2<-aalen(Surv(Y,delta)~const(u)+const(xo))

#xi is the IV variable
xi=dec12$TimeIV

#first stage regression
fit<-lm(u~xi+xo)
xet=predict(fit)

#second stage regression
fm3<-aalen(Surv(Y,delta)~const(xet)+const(xo))
 
cof=fm3$gamma
 
fm1m=coxph(Surv(t_Rx_based_origin,ac_death)~xet,data=dec12)
fm2m=coxph(Surv(t_Rx_based_origin,ac_death)~xet+SEER_agedx+male,data=dec12)

 
 kkk=survfit(Surv(t_Rx_based_origin,ac_death)~exp_Oxali,data=dec12)
plot(kkk,mark.time=FALSE,conf.int=F,lwd=c(1,3),ylim=c(0.4,1),ylab='Survival function',xlab='Time (Days)')

lines(survfit(fm2, newdata=data.frame(exp_Oxali=1,SEER_agedx=75,male=0.45)),lty=2,mark.time=FALSE,conf.int=F,lwd=3)
lines(survfit(fm2, newdata=data.frame(exp_Oxali=0,SEER_agedx=75,male=0.45)),lty=2,mark.time=FALSE,conf.int=F,lwd=1)

lines(survfit(fm2m, newdata=data.frame(xet=1,SEER_agedx=75,male=0.45)),lty=3,mark.time=FALSE,conf.int=F,lwd=3)
lines(survfit(fm2m, newdata=data.frame(xet=0,SEER_agedx=75,male=0.45)),lty=3,mark.time=FALSE,conf.int=F,lwd=1)

legend(100,0.6,c('KM estimates','Naive model-based estimates','IV model-based estimates'),lty=c(1,2,3))



