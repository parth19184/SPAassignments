markov_simulate = function(initial_state, transition_matrix, steps){
  dimension = 1:dim(transition_matrix)[1]
  list1 = rep(NA, steps + 1)
  list1[1] = initial_state
  for(i in 1:steps){
    list1[i + 1] = sample(dimension, 1, prob = transition_matrix[list1[i],])
  }
  return(list(list1 = list1, time= 0:steps))
}

R1 = c(1/3,2/3,0,0,0,0,0,0)
R2 = c(1/3,1/3,1/3,0,0,0,0,0)
R3 = c(0,1/3,1/3,1/3,0,0,0,0)
R4 = c(0,0,1/3,1/3,1/3,0,0,0)
R5 = c(0,0,0,1/3,1/3,1/3,0,0)
R6 = c(0,0,0,0,1/3,1/3,1/3,0)
R7 = c(0,0,0,0,0,1/3,1/3,1/3)
R8 = c(0,0,0,0,0,0,2/3,1/3)

trans = rbind(R1,R2,R3,R4,R5,R6,R7,R8)

simulation = markov_simulate(1, trans, 50)
#plot list1 as a function of the time index
plot(simulation$list1~simulation$time, type = "b", ylim = c(0,8))

#part b starts from here
first_state = matrix(c(1,0,0,0,0,0,0,0), nrow = 1)
second_state = first_state %*% trans
third_state = second_state %*% trans

p_value = 50
p_matrix = first_state = matrix(c(1,0,0,0,0,0,0,0), nrow = 1)
for(i in 1:p_value){
  p_matrix = p_matrix %*% trans
}