gijon_GetDS <-
function(Dataset_ID=NULL){
url<-"https://gijon.opendatasoft.com"
path<-"/api/records/1.0/search/?dataset="
if(length(Dataset_ID)==0) print("Dataset_ID parameter has to be defined")
if(length(Dataset_ID)==1){
path1<-paste0(path,Dataset_ID)
data_set<-as.data.frame(jsonlite::fromJSON(rawToChar(httr::GET(url=url,path=path1)$content))$records)
return(data_set)
}
if(length(Dataset_ID)>1){
  n<-length(Dataset_ID)
  data_set<-list()
  data_set<-sapply(1:n,function(i){
    path1<-paste0(path,Dataset_ID[i])
    data_set[[i]]<-list(as.data.frame(jsonlite::fromJSON(rawToChar(httr::GET(url=url,path=path1)$content))$records))
  })
return(data_set)
}
}
