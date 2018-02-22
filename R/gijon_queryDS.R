gijon_queryDS <-
function(search=NULL,year=NULL){
  options(stringsAsFactors = FALSE)
  datasetid<-read.csv("https://gijon.opendatasoft.com/explore/download/",sep=";")[,1:3]
  if(is.null(search)==T & is.null(year)==T){
    query<-1:nrow(datasetid)
  }
  else{
    if(is.null(search)==F & is.null(year)==T){
      query<-grep(as.character(paste0("*",search,"*")),as.character(datasetid[,1]))
    }else{
      if(is.null(search)==T & is.null(year)==F){
        query<-grep(as.character(paste0("*",year,"*")),as.character(datasetid[,1]))
      }else{
        if(is.null(search)==F & is.null(year)==F){
          querytTMP1<-grep(as.character(paste0("*",search,"*")),as.character(datasetid[,1]))
          querytTMP2<-grep(as.character(paste0("*",year,"*")),as.character(datasetid[,1]))
          query<-intersect(querytTMP1,querytTMP2)
        }
      }
    }
  }
  final_query<-list(Index=query,Dataset_ID=datasetid[query,1], Description=datasetid[query,2])
  
  if(length(final_query$Index)<1){
    print("There are not results")
    }else{
  return(final_query)
    }
}
