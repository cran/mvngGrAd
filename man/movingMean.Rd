\name{movingMean}
\section{Rdversion}{1.1}
\alias{movingMean}

\title{
Function to extract the moving means from
the object
}
\description{
Generic  function to extract the moving means, which are used as covariates, from
the object.
}
\usage{
movingMean(object,...)
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
returned is a vector with the moving means
}
\author{
Frank Technow
}

\seealso{
  \code{\link{movingGrid}} (includes example of \code{movingMean})
}

\keyword{design}

