# Korea Administrative Map (2014) Step-by-step
install.packages("devtools")
devtools::install_github("cardiomoon/kormaps2014")
library(kormaps2014)

# dplyr package(distinct, sample_n, sample_frac, mutate, transmute, summarise)
install.packages("dplyr")
library(dplyr)

# Provincial Information 1 - Include Short Names
province1=changeCode(areacode)
print(province1)
View(province1)

# Provincial Information 2
str(kormap1)
kormap1$name1
kormap1$SIDO_NM
province2 <- distinct(kormap1, SIDO_NM)
print(province2)
View(province2)

# Sigungu information.
str(kormap2)
kormap2$name1
kormap2$sigungu_nm
sigungu <- distinct(kormap2, sigungu_nm)
print(sigungu)
View(sigungu)
View(kormap2$sigungu_nm)

# Dong information
str(kormap3)
kormap3$name1
kormap3$adm_dr_nm
adm_dr_nm <- distinct(kormap3, adm_dr_nm)
print(adm_dr_nm)
View(adm_dr_nm)
