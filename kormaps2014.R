# 한국행정지도(2014) 단계구분도 패키지
install.packages("devtools")
devtools::install_github("cardiomoon/kormaps2014")
library(kormaps2014)

# dplyr 패키지(distinct, sample_n, sample_frac, mutate, transmute, summarise)
install.packages("dplyr")
library(dplyr)

# 도별 정보 1 - 줄임명칭 포함
province1=changeCode(areacode)
print(province1)
View(province1)

# 도별 정보 2
str(kormap1)
kormap1$name1
kormap1$SIDO_NM
province2 <- distinct(kormap1, SIDO_NM)
print(province2)
View(province2)

# 시,군,구 정보
str(kormap2)
kormap2$name1
kormap2$sigungu_nm
sigungu <- distinct(kormap2, sigungu_nm)
print(sigungu)
View(sigungu)
View(kormap2$sigungu_nm)

# 동,읍 정보
str(kormap3)
kormap3$name1
kormap3$adm_dr_nm
adm_dr_nm <- distinct(kormap3, adm_dr_nm)
print(adm_dr_nm)
View(adm_dr_nm)
