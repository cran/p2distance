\name{loadCSVtoP2distance}
\alias{loadCSVtoP2distance}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Load CSV file to matrix object}
\description{Load a CSV file to matrix object.}
\usage{
loadCSVtoP2distance(path, header=TRUE, sep="\t", dec=".", quote="\"", 
    na.strings="NA", fileEncoding = "", encoding = "unknown")
}
\arguments{
  \item{path}{the path of the file which the data are to be read from. Each row of the table appears as one line of the file.}
  \item{header}{a logical value indicating whether the file contains the names of the variables as its first line. If missing, the value is determined from the file format: header is set to TRUE if and only if the first row contains one fewer field than the number of columns.}
  \item{sep}{the field separator character. Values on each line of the file are separated by this character.}
  \item{dec}{the character used in the file for decimal points.}
  \item{quote}{the set of quoting characters. To disable quoting altogether, use quote = "".}
  \item{na.strings}{a character vector of strings which are to be interpreted as NA values. Blank fields are also considered to be missing values in logical, integer, numeric and complex fields.}
  \item{fileEncoding}{character string: if non-empty declares the encoding used on a file (not a connection) so the character data can be re-encoded. See the 'Encoding' section of the help for file, the 'R Data Import/Export Manual' and 'Note'.}
  \item{encoding}{encoding to be assumed for input strings. It is used to mark character strings as known to be in Latin-1 or UTF-8 (see Encoding): it is not used to re-encode the input, but allows R to handle encoded strings in their native encoding (if one of those two).}
}
\details{This function return a matrix object ready for p2distance function. It read a text file and it use the first column to give a row name. It uses the \code{read.table} function to read the file.}
\value{A matrix object containing the data of csv file}
\author{A.J. Perez-Luque; R. Moreno; R. Perez-Perez and F.J. Bonet}
\keyword{p2distance}
