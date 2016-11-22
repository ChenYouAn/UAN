install.packages("XML")
install.packages("RCurl")
install.packages("httr")
library(XML)
library(httr)
library(RCurl)

#get download page url path
urlPath <- "http://www.fonfood.com/%E6%8D%B7%E9%81%8B%E5%85%AC%E9%A4%A8%E7%AB%99"
temp    <- getURL(urlPath, encoding = "big5")
xmldoc  <- htmlParse(temp)
title   <- xpathSApply(xmldoc, "//div[@class=\"title\"]", xmlValue)

author  <- xpathSApply(xmldoc, "//div[@class='infoArea']", xmlValue)
path    <- xpathSApply(xmldoc, "//div[@class='storeTitle']"xmlvalue)

alldata <- data.frame(storeTitle, infoArea)
write.table(alldata, file = "food.csv")


urlPath <- "http://www.fonfood.com/%E6%8D%B7%E9%81%8B%E5%85%AC%E9%A4%A8%E7%AB%99"
 temp    <- getURL(urlPath, encoding = "big5")
xmldoc  <- htmlParse(temp)
 titleBlock  <- xpathSApply(xmldoc, "//div[@class=\"titleBlock\"]", xmlValue)






alltittle=rbind(alltittle,data,frame(tittle))


result=tryCatch({
  alltitle=rbind(alltittle,data,frame(tittle))})

