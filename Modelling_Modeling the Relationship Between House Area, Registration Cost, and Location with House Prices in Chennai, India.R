df = DATASET.UAS.MOLIN
#Akan dilihat linearitas dari data
plot(df, col="navy", main="Matrix Scatterplot")

#model 1 : Dengan Interaksi
sink("Model1.txt")
model1 = lm(SALES_PRICE ~ factor(AREA)*INT_SQFT*REG_FEE, data = df)

summary(model1)
sink()
#model 2 : Tanpa Interaksi
sink('Model2.txt')
model2 = lm(SALES_PRICE~factor(AREA)+INT_SQFT+REG_FEE , data=df)
summary(model2)
sink()

#melihat VIF
library(regclass)
sink('CekModel1.txt')
plot(model1) 
VIF(model1)
sink()

sink('CekModel2.txt')
plot(model2) 
VIF(model2)
sink()
