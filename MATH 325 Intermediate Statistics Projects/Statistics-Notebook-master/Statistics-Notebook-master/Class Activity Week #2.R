#Week 2 Notes
#Monday
library(mosaic)

library(tidyverse)

library(pander)

View(KidsFeet)

boxplot(length ~ sex, data=KidsFeet)

KidsFeet %>%
  group_by(sex) %>%
  summarise(min=min(length),Q1=quantile(length,.25),median=median(length),
            Q3=quantile(length,.75),max=max(length)) %>%
  pander()

KidsFeet %>%
  group_by(sex) %>%
  summarise(min=min(length),Q1=quantile(length,.25),median=median(length),
            Q3=quantile(length,.75),max=max(length),mean=mean(length),stdev=sd(length),n=n()) %>%
  pander()

barplot(table(KidsFeet$sex))

pander(table(KidsFeet$sex))

plot(length ~ width, data=KidsFeet)

KidsFeet %>%
  summarise(Correlation=cor(length,width)) %>%
  pander()

#Wednesday

library(tidyverse)
library(pander)
sort(table(starwars$homeworld))

rev(sort(table(starwars$homeworld)))

table(starwars$sex,starwars$gender)

sw2<-filter(starwars,homeworld%in%c("Naboo","Tatooine"))sw2 <- filter(starwars, homeworld %in% c("Naboo","Tatooine"))

sw2 <- starwars %>% filter(homeworld %in% c("Naboo","Tatooine"))

sw3 <- filter(starwars, homeworld %in% c("Naboo","Tatooine") & species == "Human")

sw4 <- select(starwars, c("name","height","mass"))

sw5 <- select(starwars, sort(colnames(starwars)))

pander(table(starwars$hair_color))

starwars %>%
  filter(!is.na(sex)) %>%
  group_by(sex) %>%
  summarise(meanMass = mean(mass,na.rm=TRUE),StDevMass=sd(mass,na.rm=TRUE)) %>% pander()

starwars %>%
  filter(!is.na(sex)) %>%
  group_by(sex) %>%
  summarise(meanMass = mean(mass,na.rm=TRUE),StDevMass=sd(mass,na.rm=TRUE),SampleSize=n()) %>% pander()

sw6 <- mutate(starwars, Ratio=height/mass)

sw2 <- starwars
sw2$Ratio <- starwars$height/starwars$mass
