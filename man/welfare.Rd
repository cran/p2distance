\name{welfare}
\alias{welfare}
\docType{data}
\title{Welfare Indicators of European Countries}
\description{Quality of life's indicators (\emph{welfare indicators}) of 27 countries of European Union during 2002-2007 period. For each variable (i.e. \emph{indicator}) both, definition and year is specified. The source is available in EurLIFE (see details) }
\usage{data(welfare)}
\format{
  A data frame with 27 observations on the following 20 variables.
  \describe{
    \item{\code{happiness}}{Mean value on a scale of 1 'Very unhappy' to 10 'Very happy'. Year: 2007}
    \item{\code{life.satis}}{Life satisfaction: Share of individuals aged 15 and over who are very satisfied or fairly satisfied with the life they lead. Year: 2006}
    \item{\code{judicial}}{Trust in the judicial system: Percentage of people aged 15 and over who tend to trust in justice or the legal system. Year: 2005}
    \item{\code{night}}{Unsafe to walk around at night: Percentage of individuals aged 18 and over who think that it is very unsafe or rather unsafe to walk around the area they live at night. Year: 2003}
    \item{\code{social}}{Satisfaction with social life: Percentage of the poplation aged 15 and over, who are very or fairly satisfied with their social life. Year: 2004}
    \item{\code{people}}{Trust in people: Mean value on a scale of 1 'You can't be too careful in dealing with people' to 10 'Most people can be trusted'. Year: 2007}
    \item{\code{family}}{Satisfaction with family life: Mean value on a scale from 1 'very dissatisfied' to 10 'very satisfied' with the family life. Year: 2007}
    \item{\code{health}}{Satisfaction with the national health care system: Percentage of individuals who are very or fairly satisfied with their national health system. Year: 2002}
    \item{\code{life.65}}{Life expectancy at the age of 65: Average number of further years a person at the age of 65 would live if, for the time period, the observed age-specific mortality rates remains constant. Year: 2003}
    \item{\code{life.0}}{Life expectancy at birth: average number of years a person would live if, for the time period, the observed age-specific mortality rate remains constant. Year: 2005}
    \item{\code{inequality}}{Inequality of income distribution: The ratio of total income received by the 20\% of the population with the highest income (top quintile) to that received by the 20\% of the population with the lowest income (lowest quintile). Year: 2005}
    \item{\code{hobbies}}{Too little time for hobbies and interests: Percentage of people aged 18 and over having too little time for hobbies and interests. Year: 2007}
    \item{\code{education}}{Satisfaction with education: mean value on a scale of 1 'Very dissatisfied' to 10 'Very satisfied' with their own education. Year: 2007}
    \item{\code{standard}}{Satisfaction with standard of living: Mean value on a scale of 1 'very dissatisfied' to 10 'very satisfied' with the own present standard of living. Year: 2007}
    \item{\code{dist.school}}{Distance to the nearest primary school: Proportion of people aged 15 and over who live within walking distance or within 20 minutes of the nearest primary school. Year: 1999, 2005}
    \item{\code{area}}{Satisfaction with the area you live in: Share of individuals aged 15 and over who are very satisfied or fairly satisfied with area they live on a five item scale. Year: 2004}
    \item{\code{home}}{Satisfaction with the home: Share of individuals aged 15 and over who are very satisfied or fairly satisfied with their home on a four item scale. Year: 2004}
    \item{\code{stress}}{Find work stressful: Share of people who 'strongly agree' or 'agree' that their work is too demanding and stressful. Year: 2007}
    \item{\code{employement}}{Employment rate: Employed persons aged 15-64 as a percentage of the total population in that age group. Year: 2005}
    \item{\code{job}}{Job Satisfaction: Percentage of employed people who are very or fairly satisfied with their job, measured on a four item scale. Year: 2005}
  }
}
\details{
These quality of life indicators come from different sources (Standard Eurobarometer Surveys; European Quality of Life Surveys; Eurostat; European Foundation for Improvement of Living and Working Conditions) that are available from EurLIFE, a interactive database on quality of life in Europe (see source below). 
}
\source{
EurLIFE database. Interactive database on quality of life in Europe. European Foundation for the Improvement of Living and Working Conditions (Eurofound). \url{http://www.eurofound.europa.eu/areas/qualityoflife/eurlife/index.php} - Accessed 20 Feb 2012}
\references{
Somarriba, N. and Pena, B. (2009). Syntheic Indicators of Quality of Life in Europe. \emph{Social Indicators Research}, \bold{94}, 115--133.}
\examples{
data(welfare)
}
\keyword{datasets}
