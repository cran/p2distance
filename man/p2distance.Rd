\encoding{latin1}
\name{p2distance}
\alias{p2distance}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Welfare's Synthetic Indicator function}
\description{This function calculates the \eqn{P_{2}} distance synthetic indicator for a set of variables.}
\usage{
p2distance(matriz, reference_vector = NULL, reference_vector_function = min, 
    iterations = 20, umbral = 1e-04)
}
\arguments{
  \item{matriz}{An object of matrix type with spatial entities in rows and variables in columns}
  \item{reference_vector}{Optionally. A reference vector defined for each partial indicator so as to compare different spatial entities}
  \item{reference_vector_function}{Optionally. Function to make the reference vector. Minimum es the default. Others common functions used: min, max, mean, median, etc. See \code{\link{makeReferenceVector}} for further details}
  \item{iterations}{Numbers of maximum iterations for the computational process until reach the convergence}
  \item{umbral}{The algorithm stop when the difference between iterations is lower than this umbral}
}
\details{
This is the main function on package. It calculates the Pena distance indicator, also called DP2, which is used to measure welfare in quality-of-life applications, to create Environmental Quality Indexes, etc. (see references). It is a multidimensional indicator capable to aggregate various partial indicators (variables) in a unique measure to compare the state of different spatial entities. The P2 Distance from a spatial entity \emph{r} is definied as \deqn{
DP_{2}=\sum^{n}_{i=1}\left\lbrace\left(\frac{d_{i}}{\sigma_{i}}\right)\left(1-R^{2}_{i,i-1,i-2,\ldots,1}\right)\right\rbrace} with \eqn{R^{2}_{1}=0}; where \eqn{d_{i}=|x_{ri}-x_{*i}|} with the reference base \eqn{X_{*}=\left(x_{*1},x_{*2},\ldots,x_{*n}\right)} where:
\itemize{
\item{\emph{n} is the number of variables}
\item{\eqn{x_{ri}}, is the value of the variable \emph{i} in the spatial entity \emph{r}}
\item{\eqn{\sigma_{i}} is the standard deviation of variable \emph{i}}
\item{\eqn{R^{2}_{i,i-1,\ldots,1}} is the coefficient of determination in the regression of \eqn{X_{i}} over \eqn{X_{i-1}, X_{i-2}, \ldots,X_{1}} already included.}}

The numerical value of the DP2 index has no real meaning, but its is useful for comparing the state of different spatial entities in terms of welfare, environmental conditions, etc. }
\value{
\item{discrimination.coefficient}{Vector of discrimination coefficients (DC) for each variable. The value of DC, defined by Ivanovic (1974) is \deqn{DC_{i}=\frac{2}{m(m-1)}\sum_{j,l>j}^{k_{i}}m_{ji}m_{li}\left|\frac{x_{ji}-x_{li}}{\overline{X}_{i}}\right|} where \emph{m} is the number of spatial entities and \eqn{m_{ji}} is the absolute frequency of \eqn{x_{ji}}. This measure ranges between 0 an 2. If a variable takes the same values for all spatial entities, DC equals zero, indicating zero discriminant power. By contrast, if a variable only has a value other than zero for one spatial entity and in the remainder \eqn{m-1}, is equal to zero, DC reaches its maximun value (2) and the variable has full discriminant power (see Zarzosa, 1996; Zarzosa and Somarriba, 2012). There is an alternative way of calculating the coefficient, by using the Gini index,\deqn{DC_{i}=2\frac{m}{m-1}G} where \emph{m} is the number of spatial entities and \emph{G} the Gini index}
\item{p2distance}{Vector with the last \eqn{P_{2}} distance value for each spatial entity}
\item{p2distances}{Array with vectors of \eqn{P_{2}} distances values resulting for each iteration}
\item{diff_p2distances}{Array with differeces between two contiguous \eqn{P_{2}} distances}
\item{iteration}{Number of calculated iterations}
\item{umbral}{Threshold in difference for two contiguous \eqn{P_{2}} distances}
\item{variables_sort}{Vector with the variable names by entrance order determined by last iteration}
\item{correction_factors}{Correction Factors for each variable}
\item{cor.coeff}{Correlation coefficient for each variable with the synthetic indicator (\eqn{P_{2}} distance) calculated}
\item{partial.Indicators}{For each spatial entity the difference between the reference vector and the value of each variable divided by the standard deviation. For a spatial entity, the sum of all partial indicators is the Frechet Distance (DF), which is the maximun value that \eqn{P_{2}} distance can reach.}
}
\references{
Ivanovic, B. (1974) Comment ètablir une liste des indicateurs de developpment. \emph{Revue de Statistique Apliquée}, \bold{XXII(2)}, 37--50

Montero, J. M., Chasco, C. and Larraz, B. (2010). Building an environmental quality index for a big city: a spatial interpolation approach combined with a distance indicator. \emph{Journal of Geographical Systems}, \bold{12}, 435--459.

Pena, J. B. (1977). \emph{Problemas de la medición del bienestar y conceptos afines (una aplicación al caso Español)}. Madrid: INE.

Pena, J. B. (2009). La medición del bienestar social: una revisión crítica. \emph{Estudios de Economía Aplicada}, \bold{27(2)}, 299--324.

Zarzosa, P. (1996). \emph{Aproximación a la medición del Bienestar social}. Valladolid: University of Valladolid. 248 pp.

Zarzosa, P. and Somarriba, N. (2012). An assessment of social welfare in Spain: Territorial
analysis using a synthetic welfare indicator. \emph{Social Indicators Research}, doi: \url{http://dx.doi.org/10.1007/s11205-012-0005-0}
}
\examples{
## Calculate a welfare indicator for 27 countries of Europe 
data(welfare) 

## Convert welfare dataframe to matrix object 
welfare <- as.matrix(welfare)

## Calculate P2 Distance 
ind <- p2distance(matriz=welfare, reference_vector_function = min, 
        iterations = 20)

## Examine the results
# P2 distance
ind$p2distance

# Iterations to achieve convergence
ind$iteration 

# Order of entry of variables resulting the last iteration
ind$variables_sort

# Correction factors of each variable
ind$correction_factors

# Correlations between P2 distance indicator and variables
ind$cor.coeff

# Discrimination coefficient of each variable
ind$discrimination.coefficient

## Plot of P2 Distance Indicator for European countries
barplot(ind$p2distance, beside=TRUE, col="white", space=.3, ylab="P2 distance", 
      ylim=c(0,20), names.arg=rownames(ind$p2distance), las=3, cex.names=0.8)
}

\author{
A.J. Perez-Luque; R. Moreno; R. Perez-Perez and F.J. Bonet
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{p2distance}
\keyword{synthetic indicators}
