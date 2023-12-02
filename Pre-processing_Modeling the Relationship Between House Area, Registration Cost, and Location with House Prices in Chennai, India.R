str(df)

sapply(df, function(x) which(is.na(x)))

df=na.omit(df)

sapply(df, function(x) which(is.na(x)))

unique(df$AREA)

df[df=='Ana Nagar'] = 'Anna Nagar'
df[df=='Ann Nagar'] = 'Anna Nagar'
df[df=='Karapakkam'] = 'Karapakam'
df[df=='Chrompt'] = 'Chrompet'
df[df=='Chrmpet'] = 'Chrompet'
df[df=='Chormpet'] = 'Chrompet'
df[df=='KKNagar'] = 'KK Nagar'
df[df=='TNagar'] = 'T Nagar'
df[df=='Adyr'] = 'Adyar'
df[df=='Velchery'] = 'Velachery'

unique(df$BUILDTYPE)
df[df=='Comercial'] = 'Commercial'
df[df=='Other'] = 'Others'

unique(df$UTILITY_AVAIL)
df[df=='AllPub'] = 'All Pub'
df[df=='NoSewr'] = 'NoSeWa'

unique(df$SALE_COND)
df[df=='Ab Normal'] = 'AbNormal'
df[df=='Partiall'] = 'Partial'
df[df=='PartiaLl'] = 'Partial'
df[df=='Adj Land'] = 'AdjLand'

unique(df$PARK_FACIL)
df[df=='Noo'] = 'No'

unique(df$STREET)
df[df=='Pavd'] = 'Paved'
df[df=='NoAccess'] = 'No Access'

str(df)
library(dplyr)
df=sample_n(df, 300)
View(df)

df2=select(df, c('AREA', 'INT_SQFT','REG_FEE','SALES_PRICE'))
View(df2)

boxplot(df2$REG_FEE,
        main = 'boxplot data variabel TV')
df2 <- droplevels(df2[-which(df2$REG_FEE>700000),])

boxplot(df2$SALES_PRICE,
        main = 'boxplot data variabel TV')
df2 <- droplevels(df2[-which(df2$SALES_PRICE>19000000),])

write.csv(df2, 'DATASET UAS MOLIN.csv', row.names=FALSE)
