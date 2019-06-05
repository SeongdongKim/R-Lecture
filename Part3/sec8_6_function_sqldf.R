# sqldf() 패키지 활용
install.packages("sqldf")
library(sqldf)
library(googleVis)
Fruits

sqldf('select * from Fruits')
sqldf("select * from Fruits where Fruit = 'Apples'")
sqldf('select * from Fruits where Fruit = \'Apples\'')
sqldf('select * from Fruits limit 3') # limit 0, 3
sqldf('select * from Fruits limit 3, 5')

sqldf('select * from Fruits order by year')
sqldf('select * from Fruits order by year DESC')

sqldf('select Fruit, sum(Sales) from Fruits group by Fruit')
sqldf('select Fruit, sum(Sales), sum(Expenses), sum(Profit)
      from Fruits group by Fruit')

sqldf('select Fruit, sum(Sales) from Fruits group by Fruit')

sqldf('select year, avg(Sales), avg(Expenses), avg(Profit)
      from Fruits group by year')

sqldf('select year, avg(Sales), avg(Expenses), avg(Profit)
      from Fruits group by year order by avg(Profit) desc')
sqldf('select min(Sales), max(Sales) from Fruits')
sqldf('select * from Fruits where Sales = 81')
sqldf('select * from Fruits where Sales =
      (select min(Sales) from Fruits)')
sqldf('select * from Fruits where Expenses =
      (select max(Expenses) from Fruits)')
sqldf('select * from Fruits where Sales in
      (select min(Sales), max(Sales) from Fruits)')

song <- read.csv("song.csv", header = F, fileEncoding = 'utf8')
names(song) <- c('_id', 'title', 'lyrics', 'girl_group_id')
song
girl_group <- read.csv("girl_group.csv", header = F, fileEncoding = 'utf8')
names(girl_group) <- c('_id', 'name', 'debut')
girl_group

sqldf("SELECT gg._id, gg.name, gg.debut, s.title
      FROM girl_group AS gg 
      INNER JOIN song AS s
      ON gg._id = s.girl_group_id")

sqldf('UPDATE Fruits SET Profit = 50 where Fruit = \'Apples\' and year = 2008')
sqldf('select * from Fruits')
