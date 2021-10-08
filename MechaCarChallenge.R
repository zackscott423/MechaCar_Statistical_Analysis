library(dplyr)

mpg <- read.csv("MechaCar_mpg.csv")

head(mpg)

lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg)

summary(lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg))