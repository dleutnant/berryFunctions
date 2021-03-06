% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/combineFiles.R
\name{combineFiles}
\alias{combineFiles}
\title{Combine Textfiles into one}
\usage{
combineFiles(inFiles = dir(), outFile = "combined_Textfiles.txt",
  overwrite = FALSE, sep = NULL, names = TRUE, selection = NULL,
  progbar = !quiet, quiet = FALSE, ...)
}
\arguments{
\item{inFiles}{vector with names of input files, as can be read with
\code{\link{scan}}. DEFAULT: dir()}

\item{outFile}{Character string: name of the file to be created. Passed to
\code{\link{newFilename}}. DEFAULT: "combined_Textfiles.txt"}

\item{overwrite}{Logical: overwrite outFile? DEFAULT: FALSE}

\item{sep}{Character string: Separation between content of
each file and the following. DEFAULT: NULL, with which it uses
an empty line, two lines with dashes, and another line break.}

\item{names}{Should File names be included after sep? DEFAULT: TRUE}

\item{selection}{Index of rows that should be written. Can refer to each file
separately, e.g. \code{substr(inFile_i,1,1)=="#"}.
DEFAULT: all lines}

\item{progbar}{Should a progress bar be drawn? Useful if you combine many
large files. DEFAULT: !quiet, i.e. TRUE}

\item{quiet}{Suppress message about number of files combined? DEFAULT: FALSE}

\item{\dots}{Arguments passed to \code{\link{scan}}, but not one of:
\code{file, what, blank.lines.skip, sep, quiet}.}
}
\value{
Final output file, invisibly.
}
\description{
Combine several textfiles into one, regardless of their content.
}
\examples{

## These are skipped by rcmd check (writing to external places is not allowed)
\dontrun{
cat("This is Sparta.\\nKicking your face.", file="BujakashaBerry1.txt")
cat("Chuck Norris will roundhousekick you.", file="BujakashaBerry2.txt")
combineFiles(inFiles=paste0("BujakashaBerry", 1:2, ".txt"),
             outFile="BujakashaBerry3.txt")
file.show("BujakashaBerry3.txt")
unlink(paste0("BujakashaBerry", 1:3, ".txt"))
}

}
\seealso{
\code{\link{compareFiles}}, and the functions used internally here, namely: \code{\link{paste}}, \code{\link{scan}}, \code{\link{write}}.
}
\author{
Berry Boessenkool, \email{berry-b@gmx.de}, Nov 2012, Dec 2014, Jul 2015
}
\keyword{IO}
\keyword{character}
\keyword{file}
