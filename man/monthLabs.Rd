% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/monthLabs.R
\name{monthLabs}
\alias{monthLabs}
\title{Nicely spaced labels along a month}
\usage{
monthLabs(startyear = 2002, stopyear = 2018, npm = 2, npy = NA)
}
\arguments{
\item{startyear}{Integer. starting year. DEFAULT: 2002}

\item{stopyear}{Integer. ending year. DEFAULT: 2018}

\item{npm}{Integer, one of 1,2,3,6 or 31. Number of labels per month. DEFAULT: 2\cr
 npm : days of the month\cr
 1 : first day of each month within the given years\cr
 2 : 1st and 15th day\cr
 3 : 1, 10, 20\cr
 6 : 1, 5, 10, 15, 20, 25.
31 : each day}

\item{npy}{Integer, one of 1,2,3,4 or 6. Number of labels per year at equally spaced month-beginnings.
If specified, npm is not considered at all. DEFAULT: NA}
}
\value{
Vector with Dates as returned by \code{\link{as.Date}}.
}
\description{
Create dates of certain days of the month for labeling
}
\note{
Spacing of days is not equal, but set to certain days of the month!
      This was originally developed for time series movie frames
}
\examples{

monthLabs(2014,2014, 3) # 3 days per month
monthLabs(2013,2014,  npy=3) # 3 months per year, equally spaced
monthLabs(2014,2014,  npy=4) # 4 months per year

# see monthAxis for automatic plot labeling

}
\seealso{
\code{\link{timeAxis}} for nice labeling,
         \code{\link{timeAxis}} for automatic determination of npm/npy,
         \code{\link{as.Date}}, \code{\link{paste}}
}
\author{
Berry Boessenkool, \email{berry-b@gmx.de}, early 2013
}
\keyword{chron}
