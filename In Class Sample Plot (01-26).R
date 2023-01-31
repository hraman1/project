library(tidyverse)
adultdata <- read_csv("/Users/harsharaman/Documents/GitHub/d2m-2023-shared/datasets/adult.data.csv")

**ggplot(adultdata, aes(age)) + geom_density()
**ggplot(adultdata, aes(age)) + geom_histogram()
**ggplot(adultdata, aes(age)) + geom_histogram(binwidth = 5)

**ggplot(adultdata, aes(`education-num`)) + geom_density()
**ggplot(adultdata, aes(`education-num`)) + geom_density(adjust = 2)

**ggplot(adultdata, aes(race)) + geom_density()

**ggplot(adultdata, aes(race)) + geom_bar()
**ggplot(adultdata, aes(race)) + geom_histogram()
**?ggplot(adultdata, aes(race)) + geom_histogram(stat = "count")

**ggplot(adultdata, aes(occupation)) + geom_bar() + theme(axis.text.x = element_text(angle=45, hjust=1))

**ggplot(filter(adultdata, occupation != "?"), aes(occupation)) + geom_bar()
**aduldata.occupations.noUNK <- adultdata %>% 
    **filter(occupation !="?")
**ggplot(aduldata.occupations.noUNK, aes(occupation)) + geom_bar()

**capital-gain v. count plot:
ggplot(adultdata, aes(`capital-gain`)) + geom_histogram()

**density of hours-per-week plot:
ggplot(adultdata, aes(`hours-per-week`)) + geom_density() + coord_flip()
