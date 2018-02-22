\name{RGijon-package}
\alias{RGijon-package}
\alias{RGijon}
\docType{package}
\title{
\packageTitle{RGijon}
}
\description{
\packageDescription{RGijon}
}
\details{


\packageDESCRIPTION{RGijon}


\packageAuthor{RGijon}

Maintainer: \packageMaintainer{RGijon}
}
\references{\url{https://observa.gijon.es/pages/inicio/}
}

\examples{
#How to get the data

results<-gijon_queryDS(search="estado",year=2014)
head(results)

data<-gijon_GetDS(Dataset_ID=results$datasetid)
}
