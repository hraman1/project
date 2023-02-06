library(tidyverse)

*Class Exercise:
**adultdata <- read_csv("adult.data.csv")


**ggplot(adultdata, aes(age, `education-num`)) + geom_point()
**ggplot(adultdata, aes(age, `education-num`)) + geom_jitter()
**ggplot(adultdata, aes(age, `education-num`)) + geom_smooth()
**ggplot(adultdata, aes(age, `education-num`)) + geom_jitter() + geom_smooth(method = “lm”)
**ggplot(adultdata, aes(age, `education-num`)) + geom_smooth() + geom_jitter(method = “lm”)
**ggplot(adultdata, aes(age, factor(`education-num`))) + geom_boxplot()
**ggplot(adultdata, aes(age, factor(`education-num`), group = factor(`education-num`))) + geom_violin()
**ggplot(adultdata, aes(age, factor(`education-num`), group = factor(`education-num`))) + geom_jitter() + geom_boxplot()
**ggplot(adultdata, aes(age, factor(`education-num`), group = factor(`education-num`))) + geom_jitter(color = "gray50", alpha = 0.1) + geom_boxplot()
**ggplot(adultdata, aes(education, workclass)) + geom_count()
**ggplot(adultdata, aes(education, workclass, fill = age)) + geom_raster()

**adultdata <- adultdata %>%mutate(age.bins = case_when(age <= 35 ~ "<= 35",age > 35 & age <= 50 ~ "36-50",age > 50 & age <= 65 ~ "51-65",age > 65 ~ "66+",TRUE ~ "uh oh"),education.bins = case_when(education %in% c("Preschool", "1st-4th","5th-6th", "7th-8th", "9th", "10th", "11th") ~ 'pre-HS',education %in% c("12th", "HS-grad", "Some-college") ~ 'HS',education %in% c("Assoc-acdm", "Assoc-voc", "Prof-school") ~ 'Assoc',education %in% c("Bachelors", "Masters", "Doctorate") ~ 'BA+',TRUE ~ "uh oh"),education.bins = fct_relevel(education.bins, c('pre-HS', 'HS', 'Assoc', 'BA+')),income = case_when(grepl("<", income) ~ "<=50K",grepl(">", income) ~ ">50K",TRUE ~ "uh oh"),race = as_factor(race),race = factor(race, labels = c("White", "Black", "AsiPacIsl","AmerIndFirsNat", "Other")))
**ggplot(adultdata, aes(age.bins, `education-num`)) + geom_jitter() + geom_boxplot()
**ggplot(adultdata, aes(age.bins, `education-num`)) +geom_jitter(color = "gray50", alpha = 0.1) +geom_boxplot(outlier.shape = NA, alpha = 0.0)
**ggplot(adultdata, aes(education.bins, age)) +geom_jitter(color = "gray50", alpha = 0.1) +geom_boxplot(outlier.shape = NA, alpha = 0.0)
**ggplot(adultdata, aes(factor(`education-num`), age)) +geom_jitter(alpha = 0.1, color = "red") +geom_boxplot()
**ggplot(adultdata, aes(factor(`education-num`), age)) +geom_jitter(aes(color = `education-num`), alpha = 0.1) +geom_boxplot()
**ggplot(adultdata, aes(factor(`education-num`), age, color = `education-num`)) +geom_jitter(alpha = 0.1) +geom_boxplot()
**ggplot(adultdata, aes(factor(`education-num`), age,color = factor(`education-num`))) +geom_jitter(alpha = 0.1) +geom_boxplot()

**ggplot(adultdata, aes(education.bins, fill = income)) +geom_bar(position = "fill")
**ggplot(adultdata, aes(age.bins, fill = income)) +geom_bar(position = "fill")
**ggplot(adultdata, aes(sex, fill = income)) +geom_bar(position = "fill")

**ggplot(adultdata, aes(race, fill = income)) +geom_bar(position = "fill") +facet_grid(education.bins ~ sex) +theme(axis.text.x = element_text(angle = 45, hjust = 1))
**ggplot(adultdata, aes(education.bins, age, color = education.bins)) +geom_jitter(alpha = 0.1) +geom_boxplot(outlier.shape = NA, alpha = 0.0, color = "black") +facet_grid(. ~ race)


*In-Class Assignment:
mdata <- read_csv("/Users/harsharaman/Documents/GitHub/d2m-2023-shared/datasets/MM Data.csv")
mmdata.long <- read_csv("/Users/harsharaman/Documents/GitHub/d2m-2023-shared/datasets/MM Data.csv") %>%
    pivot_longer(cols = c("Red", "Green", "Blue", "Orange","Yellow", "Brown"),
                 names_to = "Color", values_to = "Number")

*Plot 1:
  ggplot(mmdata.long, aes(Color, Number, fill = Color)) + geom_boxplot()

*Plot 2:
ggplot(mmdata.long, aes(Color, Number, fill = Color)) + geom_jitter() + geom_boxplot()

