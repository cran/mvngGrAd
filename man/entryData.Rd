\name{entryData}
\section{Rdversion}{1.1}
\alias{entryData}

\title{
Function to extract entry information
}
\description{
Generic function to extract the most relevant information from the adjustment
procedure for each entry included in the trial.
}
\usage{
entryData(object,...)
}

\arguments{
  \item{object}{
an object from the context of moving grid adjustment
}
  \item{\dots}{
possible other arguments to methods
}
}

\value{
returned is a \code{data.frame} with the following content

\item{row}{the row of the entry}
\item{column}{the column of the entry}
\item{column}{the column of the entry}
\item{adjustedPhe}{the adjusted phenotypic value}
\item{observedPhe}{the observed phenotypic value}
\item{movingMean}{the moving mean}
\item{nValues}{the number of values to calculate the moving mean}
... and possibly more
}
\author{
Frank Technow
}

\seealso{
  \code{\link{movingGrid}} (includes example of \code{entryData})
}

\keyword{design}

