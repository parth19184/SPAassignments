k1 = rgeom(100, 0.2)
#k1 is the interarrival times for 100 arrivals
sum_vector = c()
sum_vec = 0
for (i in k1){
  sum_vec = sum_vec + i
  sum_vector = append(sum_vector, sum_vec)
}

plot(sum_vector, main = "sum of interarrival times for p = 0.2")
Nt = 0
Nt_vector = c()
for(i in 1:100){
  element = k1[i]
  if(element == 0){
    len = length(Nt_vector)
    Nt_vector[len] = Nt_vector[len] + 1
    Nt = Nt + 1
  }else{
    for(i in 1:element){
      Nt_vector = c(Nt_vector, Nt)
    }
    Nt = Nt + 1
  }
}
plot(Nt_vector, type = "l", main = "Nt for various values of t")

total_arrivals = length(Nt_vector)
prob_vector = c()
for(i in 1:100){
  prob = sum(Nt_vector == i)/total_arrivals
  prob_vector = c(prob_vector, prob)
}
expectation = 0
for(i in 1:100){
  expectation = expectation + prob_vector[i]*i
}

