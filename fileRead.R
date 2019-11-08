# Read the file data extraction.
txtdata1 <- read.table(file="D:/Download/location_db/entrc_jeonbuk.txt", header=FALSE, sep="|", quote = "", fill=TRUE)
summary(txtdata1$V5)

# Data frames extract and store only the data you need2 <- data.frame(province=txtdata1$V4, sigungu=txtdata1$V5)
resu <- unique(t2)

# Á¤?Regular expression
p("^???Ö½?", t2$sigungu)
unique(t2[grep("^???Ö½?", t2$sigungu),])