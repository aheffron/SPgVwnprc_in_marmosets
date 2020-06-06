## This script performs a logistic regression analysis for SOBV's association with common marmoset age and sex.
# It also creates a bar chart showing the percentage of animals postiive or negative for SOBV at each age
# represented.

##################################################

## Part 1: Determine the associations of age and sex with SOBV positivity using univariate logistic regression. 

## Read data file.
# Choose the csv file "SOBV_age_sex_forR_v1"
df_1 <- read.csv(file.choose(), header = T)
str(df_1)

## Logistic regression model
# Format:
# data_object <- function(dependent_variable~predictor, data=name_of_data_object, family="distribution")

# Determine whether sex is associated with likelihood of being SOBV-positive.
sexModel_1 <- glm(pegi_pos ~ female, data = df_1, family = 'binomial')
summary(sexModel_1)

# Determine whether age (rounded to the nearest year) is associated with likelihood of being SOBV-positive.
ageModel_1 <- glm(pegi_pos ~ age_screened, data = df_1, family = 'binomial')
summary(ageModel_1)

# Determine whether the interaction of sex and age is associated with likelihood of being SOBV-positive.
ageSexModel_1 <- glm(pegi_pos ~ age_screened * female, data = df_1, family = 'binomial')
summary(ageSexModel_1)


##################################################

## Part 2: Create a bar chart showing the percentage of animals postiive or negative for SOBV which developed 
# lymphocytic disease of the small and large intestines.

## Read data file.
# Choose the csv file "SOBV_age_sex_forR_forBarCharts_v1"
df_2 <- read.csv(file.choose(), header = T)
str(df_2)

head(df_2)
summary(df_2)

# Import the needed package, which in this case is only ggplot2.
library(ggplot2)

#Create the plot.
q <- ggplot(data = df_2, aes(x = age, y = X._marms_pos)) 

q + geom_col(colour="black", fill="black", width=0.3) + 
  ylim(0,100) + 
  xlab("Age (years) at time of testing") + 
  ylab("Percent of marmoset population positive for SOBV") +
  theme(axis.title.y=element_text(family="Arial"),
        axis.title.x=element_text(family="Arial"),
        axis.text.y=element_text(family="Arial"),
        axis.text.x=element_text(family="Arial")
        ) 
  