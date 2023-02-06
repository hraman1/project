library(tidyverse)
install.packages("papaja")
library(papaja)

*Class Exercise:
**adultdata <- read_csv("adult.data.csv")
**adultdata <- adultdata %>%mutate(age.bins = case_when(age <= 35 ~ "<= 35",age > 35 & age <= 50 ~ "36-50",age > 50 & age <= 65 ~ "51-65",age > 65 ~ "66+",TRUE ~ "uh oh"),education.bins = case_when(education %in% c("Preschool", "1st-4th","5th-6th", "7th-8th", "9th", "10th", "11th") ~ 'pre-HS',education %in% c("12th", "HS-grad", "Some-college") ~ 'HS',education %in% c("Assoc-acdm", "Assoc-voc", "Prof-school") ~ 'Assoc',education %in% c("Bachelors", "Masters", "Doctorate") ~ 'BA+',TRUE ~ "uh oh"),education.bins = fct_relevel(education.bins, c('pre-HS', 'HS', 'Assoc', 'BA+')),income = case_when(grepl("<", income) ~ "<=50K",grepl(">", income) ~ ">50K",TRUE ~ "uh oh"),race = as_factor(race),race = factor(race, labels = c("White", "Black", "AsiPacIsl","AmerIndFirsNat", "Other")))
**ggplot(adultdata, aes(age.bins, `education-num`)) +geom_jitter() +geom_boxplot()
**ggplot(adultdata, aes(age.bins, `education-num`)) +geom_jitter(color = "gray50", alpha = 0.1) +geom_boxplot(outlier.shape = NA, alpha = 0.0)
**ggplot(adultdata, aes(education.bins, age)) +geom_jitter(color = "gray50", alpha = 0.1) +geom_boxplot(outlier.shape = NA, alpha = 0.0)
**ggplot(adultdata, aes(race, fill = income)) +geom_bar(position = "fill") +facet_grid(education.bins ~ sex) +theme(axis.text.x = element_text(angle = 45, hjust = 1))
ggplot(adultdata, aes(education.bins, age,color = education.bins)) +geom_jitter(alpha = 0.1) +geom_boxplot(outlier.shape = NA,alpha = 0.0, color = "black") +facet_grid(. ~ race)

**mdata <- read_csv("/Users/harsharaman/Documents/GitHub/d2m-2023-shared/datasets/MM Data.csv")
mmdata.long <- read_csv("/Users/harsharaman/Documents/GitHub/d2m-2023-shared/datasets/MM Data.csv") %>%
  pivot_longer(cols = c("Red", "Green", "Blue", "Orange","Yellow", "Brown"),
               names_to = "Color", values_to = "Number")
**mmdata.long.by.bag <- mmdata.long %>%
  group_by(Bag, Weight) %>%
  summarize(
    total.mms = sum(Number)
    )
**ggplot(mmdata.long.by.bag, aes(Weight, total.mms)) +
  geom_smooth(method = "lm") +
  geom_point() +labs(x = "Weight (oz)", y = "# M&M candies") +
  theme_apa()
**ggplot(mmdata.long.by.bag, aes(Weight, total.mms, label = Bag)) +geom_smooth(method = "lm") +geom_point() +labs(x = "Weight (oz)", y = "# M&M candies") +geom_text() +theme_apa()
**ggplot(mmdata.long.by.bag, aes(Weight, total.mms, label = Bag)) +geom_smooth(method = "lm") +geom_point() +labs(x = "Weight (oz)", y = "# M&M candies") +geom_text(nudge_y = 0.5) +theme_apa()
**ggplot(mmdata.long.by.bag, aes(Weight, total.mms, label = Bag)) +geom_smooth(method = "lm") +geom_point() +labs(x = "Weight (oz)", y = "# M&M candies") +geom_text(nudge_y = 0.5) +annotate("text", label = "OOPS...",x = 53, y = 45, size = 8, colour = "red") +theme_apa()                                                                        
**ggplot(mmdata.long.by.bag, aes(Weight, total.mms, label = Bag)) +geom_smooth(method = "lm") +geom_point() +labs(x = "Weight (oz)", y = "# M&M candies") +geom_text(vjust = 0, nudge_y = 0.5) +annotate("text", label = "HELLO!!",x = 53, y = 45, size = 8, colour = "red") +scale_x_continuous(limits = c(45,55),breaks = 45:55) +scale_y_continuous(limits = c(40,70),breaks = seq(40,70,10)) +theme_apa()

*In-Class Assignment:
ggplot(mmdata.long, aes(Color, Number, color = Color, fill = Color, alpha = 0.1 )) + geom_jitter(alpha = 1) + geom_violin() + scale_color_manual(values=c("blue", "brown", "green", "orange", "red", "yellow")) + scale_fill_manual(values=c("blue", "brown", "green", "orange", "red", "yellow"))
  
