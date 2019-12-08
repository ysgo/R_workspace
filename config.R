# config 패키지 설치 후 라이브러리 로드하기
install.packages("config")
library(config)

# config의 데이터 불러오기 
config::get("trials")
config <- config::get()
config$dataset

# config의 production에 넣은 R 설정 값을 가져오기 
config <- config::get(file = "config.yml")
config <- config::get(file = "conf/config.yml", use_parent = FALSE)

# yml에 설정한 production이 동작하는지 여부를 반환(True, False)
config::is_active("production")