# Eclat ( create sparse matrix line 8)


#Data Preprocessing
#install.packages('arules')
library(arules)
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)
dataset = read.transactions('Market_Basket_Optimisation.csv', sep = ',', rm.duplicates = TRUE)
summary(dataset)
itemFrequencyPlot(dataset, topN = 10)

# Training Eclat on the dataset
rules = eclat(data = dataset, parameter = list(support = 0.004, minlen = 2))   #choosing min support/length

# Visualizing the results
inspect(sort(rules, by = 'support')[1:10])

