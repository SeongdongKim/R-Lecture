# 조건식과 반복문
myAbs <- function(x) {
  if (x >= 0) {
    return(x)
  } else {
    return(-x)
  }
}
myAbs(-3.2)
myAbs(4.5)

myAbs2 <- function(x) {
  if (x >= 0) {
    return(x)
  }
    return(-x)
}
myAbs2(-3.2)
myAbs2(4.5)

myF1 <- function(x) {
  if (x > 0) {
    return(x*x)
  } else {
    return(0)
  }
}
myF1(4.6)
myF1(-2.4)

myF2 <- function(x) {
  if (x > 0) {
    return(2 * x)
  } else if (x == 0) {
    return(0)
  } else {
    return(-2 * x)
  }
}
myF2(4.6)
myF2(0)
myF2(-2.4)

#반복문
number <- 0
while (number < 5) {
  print(number)
  number <- number + 1
}

number <- 0
while (number < 5) {
  print(number)
  if (number == 3) {
    break
  }
  number <- number + 1
}

number <- -1
while (number <= 10) {
  number <- number + 1
  if (number %% 2 == 1)
    next
  print(number)
}

for (i in 1:10) {
  print(i)
}

sum <- 0
for (i in 1:100) {
  sum <- sum + i
}
print(sum)

sum <- 0
for (i in 1:100) {
  if(i %% 3 == 0)
  sum <- sum + i
}
print(sum)

multiple <- function(limit, number) {
  sum <- 0
  for (i in 1:limit) {
    if (i %% number == 0)
      sum <- sum + i
  }
  return(sum)
}
multiple(1000, 4)

library(stringr)
for (i in 1:5) {
  line <- ''
  for(k in 1:i) {
  line <- str_c(line, '#')
}
print(line)
}

for (i in 1:5) {
  line <- ' '
  if (i != 1) {
    for (k in 1:(i-1))
      line <- str_c(line, ' ')
  }
  for (k in i:5) {
    line <- str_c(line, '#')
  }
  print(line)
}

