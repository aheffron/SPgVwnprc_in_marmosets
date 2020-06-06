## This script performs a logistic regression analysis for SOBV's association with lymphocytic enterocolitis,
# and  also of the association of sex with lymphocytic enterocolitis (Part 1).
# It also creates a bar chart showing the percentage of animals postiive or negative for SOBV which developed 
# lymphocytic enterocolitis or variants of the disease (Part 2).


##################################################

## Part 1: Determine the association of SOBV with lymphocytic disease of the small and large intestines, using
# univariate logistic regression.

## Read data file.
# Choose the csv file "Enterocolitis_and_SOBV_data_forR_v3"
df_1 <- read.csv(file.choose(), header = T)
str(df_1)

## Logistic regression model
# Format:
# data_object <- function(dependent_variable~predictor, data=name_of_data_object, family="distribution")

# Determine SOBV's relationship to development of enteritis in small intestines OR colitis in large intestines.
model_1 <- glm(enteritis_OR_colitis ~ pegi_pos, data = df_1, family = 'binomial')
summary(model_1)

# Determine SOBV's relationship to development of enterocolitis (enteritis of small intestines AND colitis of large intestines).
model_2 <- glm(enteritis_AND_colitis ~ pegi_pos, data = df_1, family = 'binomial')
summary(model_2)

# Determine SOBV's relationship to development of enteritis of small intestines.
model_3 <- glm(enteritis_s ~ pegi_pos, data = df_1, family = 'binomial')
summary(model_3)

# Determine SOBV's relationship to development of colitis of small intestines.
model_4 <- glm(colitis_l ~ pegi_pos, data = df_1, family = 'binomial')
summary(model_4)

# Determine SOBV's relationship to development of no lymphocytic disease
model_5 <- glm(no_disease ~ pegi_pos, data = df_1, family = 'binomial')
summary(model_5)

# Determine whether sex is associated with any of the lymphocytic disease states.
model_6 <- glm(enteritis_OR_colitis ~ female, data = df_1, family = 'binomial')
summary(model_6)
model_7 <- glm(enteritis_AND_colitis ~ female, data = df_1, family = 'binomial')
summary(model_7)
model_8 <- glm(enteritis_s ~ female, data = df_1, family = 'binomial')
summary(model_8)
model_9 <- glm(colitis_l ~ female, data = df_1, family = 'binomial')
summary(model_9)
model_10 <- glm(no_disease ~ female, data = df_1, family = 'binomial')
summary(model_10)


##################################################

## Part 2: Create a bar chart showing the percentage of animals postiive or negative for SOBV which developed 
# lymphocytic disease of the small and large intestines.

## Read data file.
# Choose the csv file "SOBV_enteritis_forR_forBarCharts_v6"
df_2 <- read.csv(file.choose(), header = T)
str(df_2)

head(df_2)
summary(df_2)

# Import the needed package, which in this case is only ggplot2.
library(ggplot2)

# Order the columns.
enteritis_type_order <- c("Enteritis", "Colitis", 
                          "Enteritis or colitis", 
                          "Enterocolitis",
                          "No disease")

#Create the plot.
q <- ggplot(data = df_2, aes(fill=pegi_status, y=percent_marm_population, x=enteritis_type)) + 
  geom_bar(position="dodge", stat="identity") 

q  + scale_x_discrete(limits=enteritis_type_order) +
  ylim(0,100) + 
  xlab("Location of lymphocytic disease") + 
  ylab("Percent of infected or non-infected population 
       with disease condition") +
  labs(fill = "SOBV infection status") +
  theme(axis.title.y=element_text(family="Arial"),
        axis.title.x=element_text(family="Arial"),
        axis.text.y=element_text(family="Arial"),
        axis.text.x=element_text(family="Arial")) +
  scale_fill_grey()
