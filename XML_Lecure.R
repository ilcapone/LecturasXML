

library(XML)

#C:/Users/Öuri/Documents/DataDrivenSecurityProyects/LecturasXML/prueba.xml

fileUrl= "Z:/DDS/LecturasXML/prueba.xml"
doc<-xmlParse(fileUrl)
rootNode<-xmlRoot(doc)
rootNode

#Turning XML into a dataframe
#Madhu2012=ldply(xmlToList("pubmed_sample.xml"), data.frame) #completes with errors: "row names were found from a short variable and have been discarded"
#View(Madhu2012) #for easy checking that the data is properly formatted
#Madhu2012.Clean=Madhu2012[Madhu2012[25]=='Y',] #gets rid of duplicated rows


#xmlName(rootNode)
#xmlSize(rootNode) 
#xmlName(rootNode[[1]]) 
#xmlSApply(rootNode,xmlValue)
#rootNode[[1]]
#Root Node's children
#xmlSize(xmltop[[1]]) #number of nodes in each child
#xmlSApply(xmltop[[1]], xmlName) #name(s)
#xmlSApply(xmltop[[1]], xmlAttrs) #attribute(s)
#xmlSApply(xmltop[[1]], xmlSize) #size
