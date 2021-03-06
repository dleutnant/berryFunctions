% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/insertRows.R
\name{insertRows}
\alias{insertRows}
\title{insert rows to data.frame}
\usage{
insertRows(df, r, new = NA)
}
\arguments{
\item{df}{data.frame}

\item{r}{Row number (not name!), at which the \code{new} row is to be inserted. Can be a vector}

\item{new}{Vector with data to be inserted, is recycled. Alternatively, a data.frame, whose rows are put into the r locations.
If it has more rows than length(r), the excess rows are ignored. DEFAULT: NA}
}
\value{
data.frame
}
\description{
Insert (multiple) rows to a data.frame, possibly coming from another data.frame, with value and row recycling
}
\note{
Has not yet been tested with RWI (really weird input), so might not be absolutely foolproof
}
\examples{

existingDF <- as.data.frame(matrix(1:20, nrow=5, ncol=4))
existingDF
insertRows(existingDF, 2) # default new=NA is recycled
insertRows(existingDF, 2, 444:446)
insertRows(existingDF, 3, new=matrix(10:1,ncol=2)) # input warning
insertRows(existingDF, 1)
insertRows(existingDF, 5)
insertRows(existingDF, 6) # weird stuff...
insertRows(existingDF, 9) # not supposed to do that

# Works for multiple rows as well:
insertRows(existingDF, r=c(2,4,5), new=NA)
insertRows(existingDF, r=c(2,4,4), new=NA)

# Also works with a data.frame for insertion:
insertDF <- as.data.frame(matrix(101:112, nrow=3, ncol=4))
insertRows(existingDF, 3, new=insertDF) # excess rows in new are ignored
insertRows(existingDF, c(2,4,5), new=insertDF)
insertRows(existingDF, c(2,4:6), new=insertDF) # rows are recycled

}
\references{
\url{http://stackoverflow.com/questions/11561856/add-new-row-to-dataframe}
}
\seealso{
\code{\link{addRows}}
}
\author{
Berry Boessenkool, \email{berry-b@gmx.de}, Oct 2015, based on code by Ari B. Friedmann
        (I added the for loop, recycling, input controls and data.framification)
}
\keyword{array}
\keyword{manip}
\keyword{misc}
