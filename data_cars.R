summary(mtcars)
ratarata<-mean(mtcars$mpg)
n<-length(mtcars)
status <- numeric(n)
for (i in 1:n){
  if (mtcars$mpg[i]>ratarata){
    status[i]<-'tinggi'
  }
  else
    status<-append(status,'rendah')
}

hist(mtcars$mpg)

# Tambahan Analisis Regresi Linear Sederhana
model_regresi <- lm(mpg ~ wt, data = mtcars)
summary(model_regresi)