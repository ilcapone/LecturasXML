
library(XML)

#con <-url("http://www.imdb.com/chart/top")
#htmlCode<-readLines(con)
#htmlCode
#close(con)

url<-"http://www.imdb.com/chart/top"
htmlCode2 <-htmlParse(url)
xpathSApply(htmlCode2 , "//title", xmlValue)
xpathSApply(htmlCode2, "//td[@class='titleColumn']", xmlValue)

##lectura httr
library(httr)
html2 <-GET("http://www.imdb.com/chart/top")
content <-content(html2, as="text")
parsedHtml<-htmlParse(content, asText=TRUE)
xpathSApply(parsedHtml, "//title", xmlValue)

##Consultas a google
searchthis<-"Name+subname+secondSubname"
google <-handle("http://google.com")
squery<-paste("search?q=", searchthis, sep= "")
gsearch<-GET(handle = google, path = squery)
status_code(gsearch)
headers(gsearch)
content2 <-htmlParse(content(gsearch, "text"))
results <-xpathSApply(xmlRoot(xmlRoot(content2)), "//div[@class=\"g\"]", xmlValue)
results

