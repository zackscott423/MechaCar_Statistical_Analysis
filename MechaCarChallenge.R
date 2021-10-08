library(dplyr)

mpg <- read.csv("MechaCar_mpg.csv")

head(mpg)

lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg)

summary(lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg))

coil <- read.csv("Suspension_Coil.csv")

head(coil)

total_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI))

total_summary

lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

lot_summary

t.test((coil$PSI),mu=mean(coil$PSI))

t.test((coil$PSI),mu=mean(coil$PSI),subset(coil$PSI,coil$Manufacturing_Lot=="Lot1"))

t.test((coil$PSI),mu=mean(coil$PSI),subset(coil$PSI,coil$Manufacturing_Lot=="Lot2"))

t.test((coil$PSI),mu=mean(coil$PSI),subset(coil$PSI,coil$Manufacturing_Lot=="Lot3"))

