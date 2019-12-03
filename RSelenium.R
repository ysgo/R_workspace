if(!require(RSelenium)) install.packages("RSelenium")

remDr <- remoteDriver(remoteServerAddr="localhost", port = 4445L, browserName = "chrome")
remDr$open()
remDr$maxWindowSize()
remDr$navigate("www.google.com")

remDr$close()
