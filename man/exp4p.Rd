% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exp4p.R
\name{exp4p}
\alias{exp4p}
\title{4-parametric exponential function}
\usage{
exp4p(x, y, digits = 2, plot = FALSE, las = 1, col = 1:6,
  legarg = NULL, ...)
}
\arguments{
\item{x, y}{x and y Data}

\item{digits}{significant digits for rounding R^2. DEFAULT: 2}

\item{plot}{plot data and fitted functions? DEFAULT: FALSE}

\item{las}{label axis style, see \code{\link{par}}. DEFAULT: 1}

\item{col}{6 colors for lines and legend texts. DEFAULT: 1:6}

\item{legarg}{Arguments passed to \code{\link{legend}}. DEFAULT: NULL}

\item{\dots}{further graphical parameters passed to \code{\link{plot}}}
}
\value{
Data.frame with the 4 parameters for each \code{\link{optim}} method
}
\description{
Fits an exponential function of the form a*e^(b*(x+c))+d
}
\details{
This is mainly a building block for mReg
}
\note{
Optim can be slow! It refers to the functions rmse and rsquare, also in this package.
      L-BFGS-B needs finite values. In case it doesn't get any
      with the initial parameters (as in the first example Dataset),
      it tries again with the parameters optimized via Nelder Mead.
}
\examples{
\dontrun{## Skip time consuming checks on CRAN
# exponential decline of temperature of a mug of hot chocolate
tfile <- system.file("extdata/Temp.txt", package="berryFunctions")
temp <- read.table(tfile, header=TRUE, dec=",")
head(temp)
plot(temp)
temp <- temp[-20,] # missing value - rmse would complain about it
x <- temp$Minuten
y <- temp$Temp
rm(tfile, temp)

exp4p(x,y, plot=TRUE)
# y=49*e^(-0.031*(x - 0  )) + 25 correct, judged from the model:
# Temp=T0 - Te *exp(k*t) + Te     with    T0=73.76,  Tend=26.21, k=-0.031
# optmethod="Nelder-Mead"  # y=52*e^(-0.031*(x + 3.4)) + 26 wrong
}

}
\seealso{
\code{\link{mReg}}, \code{\link{lm}}
}
\author{
Berry Boessenkool, \email{berry-b@gmx.de}, 2012-2013, outsourced from mReg in July 2014
}
\keyword{nonlinear}
\keyword{regression}
