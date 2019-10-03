# 파일 읽어 데이터 추출
txtdata1 <- read.table(file="D:/Download/location_db/entrc_jeonbuk.txt", header=FALSE, sep="|", quote = "", fill=TRUE)
summary(txtdata1$V5)

# 데이터 프레임으로 필요한 데이터만 추출해 저장
t2 <- data.frame(province=txtdata1$V4, sigungu=txtdata1$V5)
resu <- unique(t2)

# 정규표현식
grep("^전주시", t2$sigungu)
unique(t2[grep("^전주시", t2$sigungu),])