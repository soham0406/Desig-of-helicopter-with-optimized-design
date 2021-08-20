---
  title: "616 project"
author: "Soham Patil"
date: "4/28/2021"
output: word_document
editor_options: 
  chunk_output_type: console
---
  ```{r}
library(faraway)
library(readxl)
SOHAM <- read_excel("C:/Users/soham/OneDrive/Desktop/Soham MS/ISEN SEM 1/616/Project/SOHAM.xlsx")
View(SOHAM)

x = halfnorm(SOHAM$MainEffect, nlab= 21, labs = as.character(SOHAM$RUN), ylab = "Sorted Data",)
Y = halfnorm(SOHAM$Dispersion, nlab= 21, labs = as.character(SOHAM$RUN), ylab = "Sorted Data",)



library(ISLR)
library(leaps)
library(olsrr)
library(readxl)
HAMADA <- read_excel("C:/Users/soham/OneDrive/Desktop/Soham MS/ISEN SEM 1/616/Project/HAMADA.xlsx")
View(HAMADA)


regfit=lm(Y~A+B+C+D+E+F,data=HAMADA)
ols_step_both_p(regfit)
summary(regfit)

regfitA=lm(Y~A+AB+AC+AD+AE+AF,data=HAMADA)
ols_step_both_p(regfitA)
summary(regfitA)

regfitB=lm(Y~B+AB+BC+BD+BE+BF,data=HAMADA)
ols_step_both_p(regfitB)
summary(regfitB)


regfitC=lm(Y~C+AC+BC+CD+CE+CF,data=HAMADA)
ols_step_both_p(regfitC)
summary(regfitC)

regfitD=lm(Y~D+AD+BD+CD+DE+DF,data=HAMADA)
ols_step_both_p(regfitD)
summary(regfitD)

regfitE=lm(Y~E+AE+BE+CE+DE+EF,data=HAMADA)
ols_step_both_p(regfitE)
summary(regfitE)

regfitF=lm(Y~F+AF+BF+CF+DF+EF,data=HAMADA)
ols_step_both_p(regfitF)
summary(regfitF)

regfitall=lm(Y~A+B+C+D+E+F+BD+CD+DF+CE,data=HAMADA)
ols_step_both_p(regfitall)
summary(regfitall)


```

For dispersion
```{r}
regfit=lm(S~A+B+C+D+E+F,data=HAMADA)
ols_step_both_p(regfit)
summary(regfit)

regfitA=lm(S~A+AB+AC+AD+AE+AF,data=HAMADA)
ols_step_both_p(regfitA)
summary(regfitA)

regfitB=lm(S~B+AB+BC+BD+BE+BF,data=HAMADA)
ols_step_both_p(regfitB)
summary(regfitB)


regfitC=lm(S~C+AC+BC+CD+CE+CF,data=HAMADA)
ols_step_both_p(regfitC)
summary(regfitC)

regfitD=lm(S~D+AD+BD+CD+DE+DF,data=HAMADA)
ols_step_both_p(regfitD)
summary(regfitD)

regfitE=lm(S~E+AE+BE+CE+DE+EF,data=HAMADA)
ols_step_both_p(regfitE)
summary(regfitE)

regfitF=lm(S~F+AF+BF+CF+DF+EF,data=HAMADA)
ols_step_both_p(regfitF)
summary(regfitF)

regfitall=lm(S~A+B+C+D+E+F+EF+CE+AD+CE+AB+AD+AB,data=HAMADA)
ols_step_both_p(regfitall)
summary(regfitall)

```
