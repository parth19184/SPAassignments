p= 0.7
t1 = 10
t2 = 50
t3 = 100
t4 = 500

#part a
bernoulli_data_t1 = rbinom(n = 100, size = t1, p)
plot(bernoulli_data_t1, main = "no. of arrivals for t = 10 and with 100 observations")
bernoulli_data_t2 = rbinom(n = 100, size = t2, p)
plot(bernoulli_data_t2, main = "no. of arrivals for t = 50 and with 100 observations")
bernoulli_data_t3 = rbinom(n = 100, size = t3, p)
plot(bernoulli_data_t3, main = "no. of arrivals for t = 100 and with 100 observations")
bernoulli_data_t4 = rbinom(n = 100, size = t4, p)
plot(bernoulli_data_t4, main = "no. of arrivals for t = 500 and with 100 observations")

#part b

# density_t1 = density(bernoulli_data_t1)
# plot(density_t1)
# density_t2 = density(bernoulli_data_t2)
# plot(density_t2)


data_frame1 = as.data.frame(table(bernoulli_data_t1))
x_axis1 = data_frame1[1:nrow(data_frame1), 1]
y_axis1 = data_frame1[1:nrow(data_frame1), 2]/100
plot(x_axis1, y_axis1, main = "probability of number of arrivals for t1")

data_frame2 = as.data.frame(table(bernoulli_data_t2))
x_axis2 = data_frame2[1:nrow(data_frame2), 1]
y_axis2 = data_frame2[1:nrow(data_frame2), 2]/100
plot(x_axis2, y_axis2, main = "probability of number of arrivals for t2")

data_frame3 = as.data.frame(table(bernoulli_data_t3))
x_axis3 = data_frame3[1:nrow(data_frame3), 1]
y_axis3 = data_frame3[1:nrow(data_frame3), 2]/100
plot(x_axis3, y_axis3, main = "probability of number of arrivals for t3")

data_frame4 = as.data.frame(table(bernoulli_data_t4))
x_axis4 = data_frame4[1:nrow(data_frame4), 1]
y_axis4 = data_frame4[1:nrow(data_frame4), 2]/100
plot(x_axis4, y_axis4, main = "probability of number of arrivals for t4")

#questionc

plot(ecdf(bernoulli_data_t1))
plot(ecdf(bernoulli_data_t2))
plot(ecdf(bernoulli_data_t3))
plot(ecdf(bernoulli_data_t4))

#questiond

bernoulli_data_d = rbinom(n = 100, size = 100, 0.1)
plot(bernoulli_data_d, main = "no. of arrivals for t = 100 and with 100 observations with probability 0.1")
data_frame_d = as.data.frame(table(bernoulli_data_d))
x_axisd = data_frame4[1:nrow(data_frame_d), 1]
y_axisd = data_frame4[1:nrow(data_frame_d), 2]/100

plot(x_axisd, y_axisd, main = "probability of number of arrivals for question d")
plot(ecdf(bernoulli_data_d))
plot(density(bernoulli_data_d), main = "question d")
#question e
t_e = 100
geometric_data = rgeom(t_e, p)
plot(ecdf(geometric_data))

#alternates:
plot(density(bernoulli_data_t1), main = "question b t1")
plot(density(bernoulli_data_t2), main = "question b t2")
plot(density(bernoulli_data_t3), main = "question b t3")
plot(density(bernoulli_data_t4), main = "question b t4")