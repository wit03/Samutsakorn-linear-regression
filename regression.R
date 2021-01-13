infect_relation = data.frame(
  date = c(31,1,2,3,4,5,6,7,8,9,10,11,12,13),
  infected = c(104,67, 55, 541, 470, 67, 145, 58, 46, 73, 80, 176, 35, 208)
)

infect_relation.model = lm(infected ~ date, data=infect_relation)
summary(infect_relation.model)
plot(infected~date, infect_relation)
abline(infect_relation.model)
