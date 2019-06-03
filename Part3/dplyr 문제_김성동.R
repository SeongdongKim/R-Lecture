install.packages("ggplot2")
library(ggplot2)
mpg
View(mpg)

#문제 3
data3 <- filter(mpg, manufacturer %in% c('chevrolet', 'ford', 'honda'))
data3 %>%
  group_by(manufacturer) %>%
  summarise(avarage = mean(hwy, na.rm = TRUE))

#문제 4
select(mpg, class, cty)

#문제 5
data5 <- select(mpg, class, cty)
data5 %>%
  group_by(class) %>%
  summarise(avarage = mean(cty, na.rm = TRUE))
data5 %>%
  filter(class %in% c('suv', 'compact')) %>%
  group_by(class) %>%
  summarise(avarage = mean(cty, na.rm = TRUE))

#문제 6
data6 <- filter(mpg, manufacturer =='audi')
data6 %>%
  arrange(desc(hwy)) %>%
  head(5)
