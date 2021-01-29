x[-c(2, 10
vect <- c(foo = 11, bar = 2, norf = NA
names(vect)
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")
identical(vect, vect2

vect["bar
vect[c("foo", "bar")]
1

my_vector <- ?":"
 my_vector <- 1:20
class(my_vector
my_matrix <- my_vector
?matrix
my_matrix <- matrix(1:20, nrow=4, ncol=5)
identical(my_matrix, my_matrix2)
library (swirl)
swirl()

play()

matrix(1:20, nrow = 4, ncol = 5, byrow = FALSE)
nxt()
identical(my_matrix, my_matrix2)
patients <- c("Bill", "Gina", "Kelly", "Sean")
cbind(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
my_data
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data)
colnames(my_data) <- cnames
my_data
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7
6 < 7
10 <= 10
2
4
5 != 7
!5 == 7
4
4
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)
5 > 8 || 6 != 8 && 4 > 3.9
2
3
isTRUE(6 > 4)
1
identical('twins', 'twins')
4
xor(5 == 6, !FALSE)
2
ints <- sample(10)
ints
ints > 5
which(ints > 7)
1
any(ints < 0)
all(ints > 0)
3
1
1
9
Sys.Date()
mean (c(2, 4, 5))
boring_function <- function(x)
submit()
boring_function('My first function!')
boring_function
submit()
my_mean(c(4, 5, 10))
submit()
remainder(5)
remainder(11, 5)
remainder(divisor = 11, num = 5)
remainder(4, div = 2)
args(remainder)
submit()
evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
evaluate(function(x){x+1}, 6)
evaluate(function(x){x[1]}, c(8, 4, 0))
evaluate(function(x){x[-1]}, c(8, 4, 0))
?paste
paste("Programming", "is", "fun!")
submit()
telegram(c("hi))
telegram(c("Hello", "my", ",", "name", "is", "Cheyenne", "Young", "!"))
telegram(c("Hello", "world", ",", "how", "are", "we", "today", "?"))
submit()
mad_libs(place = "Italy", adjustive = "scary", noun = "fox")
submit()
'I' %p% 'love' %p% 'R!'
data(cars)
?cars
head(data(cars))
head(cars)
plot(cars)
?plot
plot()
plot(x = cars$speed, y = cars$dist)
plot(x = cars$dist, y = cars$speed)
plot(x = cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")
 plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtitle")
plot(cars, col = 2)
plot(cars, xlim = c(10, 15))
plot(cars, pch = 2)
data(mtcars)
?boxplot
boxplot(formula = mpg ~ cyl, data = mtcars)
hist(mtcars$mpg)


































