library(ggplot2)
par(mfrow=c(2,2))
qplot(Sepal.Length,Sepal.Width,data = iris)
qplot(Sepal.Length,Petal.Length,data = iris)
qplot(Sepal.Length,Petal.Length,data = iris,colour=Species)
qplot(Sepal.Length,Petal.Length,data = iris,shape=Species,colour=Species)
qplot(Sepal.Length,Petal.Length,data = iris,shape=Species,colour=Species)
#plot-1
qplot(Sepal.Length,Petal.Length,data = iris,shape=Species,
      colour=Species,geom = c('point','smooth'),method='loess')
#plot-2
qplot(Sepal.Length,Petal.Length,data = iris,shape=Species,
      colour=Species,geom = c('point','smooth'),method='loess',span=0.5)
#plot-3
qplot(Sepal.Length,Petal.Length,data = iris,shape=Species,
      colour=Species,geom = c('point','smooth'),method='gam',y~s(x))
#plot-4
qplot(Sepal.Length,Petal.Length,data = iris,shape=Species,
      colour=Species,geom = c('point','smooth'),method='lm',y~ns(x,6))#6为自由度
#plot-5
qplot(Species,Petal.Length/Sepal.Length,data = iris,shape=Species,
      colour=Species,geom = 'jitter')













