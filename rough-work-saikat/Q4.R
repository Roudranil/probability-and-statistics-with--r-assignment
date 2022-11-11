library(MASS)
plot(Insurance$Holders,Insurance$Claims
     ,xlab = 'Holders',ylab='Claims',pch=20)
grid()



NegLogLikeA = function(theta,data){
  sigma = exp(theta[3])
  n = nrow(data)
  l=0
  for(i in 1:n){
    mu = theta[1]+theta[2]*data$Holders[i]
    l = l + log(dnorm(data$Claims[i],mean = mu,sd=sigma))
  }
  return(-l)
}


theta_initial = c(0.01,0.1,log(10))
NegLogLikeA(theta_initial,Insurance)

fit = optim(theta_initial,
            NegLogLikeA,
            data = Insurance)

ggplot(data=Insurance)+
  geom_line(aes(Holders, fit$par[1]+fit$par[2]*Holders))+
  geom_point(aes(Holders,Claims))
theta_hat = fit$par
theta_hat



BIC = 2*NegLogLikeA(theta_hat,Insurance) + log(nrow(Insurance))*2












dlaplace = function(x, mu, sigma){
  exp(-abs(x-mu)/sigma) / (2*sigma)
}


NegLogLikeB = function(theta, data){
  sigma = theta[3]
  n = nrow(data)
  l=0
  for(i in 1:n){
    mu = theta[1]+theta[2]*data$Holders[i]
    l = l + log(dlaplace(data$Claims[i], 0, sigma))
    print(l)
  }
  return(-l)
}


theta_initial=c(0.01,0.1,10)
NegLogLikeB(theta_initial, Insurance)

fit = optim(theta_initial,
            NegLogLikeB,
            data=Insurance)

ggplot(data=Insurance)+
  geom_line(aes(Holders, fit$par[1]+fit$par[2]*Holders))+
  geom_point(aes(Holders,Claims))
theta_hat = fit$par
theta_hat



BIC = 2*NegLogLikeB(theta_hat,Insurance) + log(nrow(Insurance))*2








NegLogLikeC = function(theta,data){
  sigma = exp(theta[3])
  n = nrow(data)
  l=0
  for(i in 1:n){
    mu = theta[1]+theta[2]*data$Holders[i]
    l = l + log(dlnorm(data$Claims[i],meanlog = mu,sdlog = sigma))
    print(l)
  }
  return(-l)
}


theta_initial=c(0.01,0.1,log(10))
NegLogLikeC(theta_initial,Insurance)

fit = optim(theta_initial
            ,NegLogLike
            ,data=Insurance)
ggplot(data=Insurance)+
  geom_line(aes(Holders, fit$par[1]+fit$par[2]*Holders))+
  geom_point(aes(Holders,Claims))
theta_hat = fit$par
theta_hat



BIC=2*NegLogLike(theta_hat,Insurance)+log(nrow(Insurance))*2





