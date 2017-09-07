#this test to prove we can use xml file as the config file
#use with config.xml

library("XML")

node <- xmlNode("foo", attrs=c(a="1", b="my name"))

doc <- xmlParse("config.xml")


#the following provide the inner text of given xpath (a list of char)
listOfChar <- xpathApply(doc, "//settings/testLoad")

#this transfer list of char to string
contentStr =  gsub("^\\s+|\\s+$","", paste( listOfChar[1]))

#this remove all newline symbol and return symbol
#e =gsub("[\r\n]","",t)