#if (!require("RSelenium")) {
#  install_version("binman", repos = "https://cran.uni-muenster.de/")
#  install_version("wdman", repos = "https://cran.uni-muenster.de/")
#  install_version("RSelenium", repos = "https://cran.uni-muenster.de/")
#}
if (!require("RSelenium")) install.packages("Rselenium")

# I Got Error Like Error In If (File.Access(Phantompath, 1) < 0){:Argument Is Of Length Zero
# Error Solution Method -> "phantomjs" remove and create directory
# binman::rm_platform("phantomjs")
# wdman::selenium(retcommand = TRUE)

# phantomjs headless browser Assignment in the port number 4445
pJS <- wdman::phantomjs(port = 4445L)

# Remote Settings
remDr <- remoteDriver(port = 4445L, browserName = "chrome")

# phantomjs driver execute
remDr$open()
remDr$maxWindowSize()
remDr$navigate("https://www.bigkinds.or.kr/")

eleLink <- remDr$findElements(using = 'css', '#search-box > div.main-search > div > h1')
getText <- unlist(sapply(eleLink, function(x){x$getElementText()}))
print(getText)

# exit
remDr$close()
pJS$stop()

# remove variable 
remove(remDR)
remove(pJS)
