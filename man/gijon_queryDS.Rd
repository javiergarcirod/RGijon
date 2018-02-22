\name{gijon_queryDS}
\alias{gijon_queryDS}
\title{
Consults the list of Datasets provided by the Council of Gijon.
}
\description{
This allows consulting the available dataset and extracting a objet with our query.
}
\usage{
gijon_queryDS(search = NULL, year = NULL)
}

\arguments{
  \item{search}{Keyword to search among the titles of datasets.

}
  \item{year}{Year for which we want to know if there are avalaible datasets.
}
}
\details{
This function allows consulting which datasets are avalaible in the API of the Council of Gijon.In addition, it returns us an object with the datasets which satisfy our query.
More information in \url{https://observa.gijon.es/pages/inicio/}.
}
\value{
A list.
}
\references{\url{https://observa.gijon.es/pages/inicio/}
}
\author{
Javier Garcia Rodriguez
}

\seealso{
\code{\link{gijon_GetDS}}
}
\examples{
#This lines show how to consult every datasets which are avalaible
results<-gijon_queryDS()

head(results$datasetid) #It is the ID to get the data
head(results$title) #It is the title of the dataset
head(results$description) #It is a brief description of the dataset

#Doing a query with a Keyword

results<-gijon_queryDS(search="estado")
head(results$description)

}
