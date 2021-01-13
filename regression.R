infect_relation = data.frame(
  date = c(1,2,3,4,5,6,7,8,9,10,11,12,13),
  infected = c(67, 55, 541, 470, 67, 145, 58, 46, 73, 80, 176, 35, 208)
)

infect_relation.model = lm(infected ~ date, data=infect_relation)
summary(infect_relation.model)
plot(infected~date, infect_relation, main="Samutsakorn Prediction Graph from 31 dec 2020 to 13 Jan 2021 ")
abline(infect_relation.model)
coef(infect_relation.model)
predictDate <- function(d) {
 result <- predict.lm(infect_relation.model, data.frame(date = d))  
 return(result)
}
predictDate(14)