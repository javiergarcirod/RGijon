\name{gijon_GetDS}
\alias{gijon_GetDS}
\title{
Extracts the dataset/s of the API provided by the Council of Gijon.
}
\description{
This function allows us extracting the dataset that we need of the Observa Gijon API.
}
\usage{
gijon_GetDS(Dataset_ID = NULL)
}

\arguments{
  \item{Dataset_ID}{
It is a parameter to identify the dataset in the API. To know it , we should use "gijon_queryDS" or consult the webpage \url{https://observa.gijon.es/pages/inicio/}.
}
}

\value{
A dataset or a list with the corresponding datasets if the query is multiple.
}

\author{
Javier Garcia Rodriguez
}

\examples{

# How to get the data

results<-gijon_queryDS(search="estado",year=2014)
head(results)

data<-gijon_GetDS(Dataset_ID=results$datasetid)

}


