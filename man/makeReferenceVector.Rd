\encoding{latin1}
\name{makeReferenceVector}
\alias{makeReferenceVector}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Make a reference vector}
\description{Make a reference vector.}
\usage{
makeReferenceVector(X, reference_vector_function = min)
}
\arguments{
  \item{X}{Array with \emph{n} rows (entities) and \emph{m} columns (values of variables)}
  \item{reference_vector_function}{Function to make the reference vector. Common functions used are: min, max, mean, median, etc. See \code{apply} for further details. Minimum es the default function}
}
\details{A reference vector must be defined for each partial indicator so as to compare different spatial entities. This vector is used by \code{\link{p2distance}} function (as base reference) to calculate distances of each spatial entities with this reference base. It is quite commom to consider the minimum value as the base reference (see references).
}
\value{Vector with the reference value (base reference) of each variable. The vector length equals to number of variables}
\references{
Pena, J. B. (1977). \emph{Problemas de la medición del bienestar y conceptos afines (una aplicación al caso Español)}. Madrid: INE.

Pena, J. B. (2009). La medición del bienestar social: una revisión crítica. \emph{Estudios de Economía Aplicada}, \bold{27(2)}, 299--324.

Somarriba, N. (2008). \emph{Aproximación a la medición de la calidad de vida en la Unión Europea}. Doctoral Thesis. University of Valladolid. \url{http://www.eumed.net/tesis/2010/mnsa/index.htm}

Zarzosa, P. (1992). \emph{Aproximación a la medición del bienestar social, estudio de la idoneidad del indicador sintético Distancia P2}. Doctoral Thesis.  University of Valladolid.

}
\examples{
## Create a data frame of 3 variables (indicators) for 6 entities (rows)
dat <- data.frame( 
  		x1=c(10,12,13,14,12,11),
			x2=c(40,51,61,68,34,44),
			x3=c(0.43, 0.41, 0.39, 0.55, 0.60, 0.38))

## Calculate the reference vector (base reference) using minimun value of each variable
makeReferenceVector(dat, reference_vector_function=min)  
}
\author{A.J. Perez-Luque; R. Moreno; R. Perez-Perez and F.J. Bonet}
\keyword{p2distance}
