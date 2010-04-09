\name{movG-class}
\section{Rdversion}{1.1}
\docType{class}
\alias{movG-class}
\title{Class "movG" }

\description{The "movG" Class Represents Objects From A Moving Grid
  Adjustment Using A Designed Grid}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("movG", ...)} or
by a call to function \code{movingGrid}.
}
\section{Slots}{
	 \describe{
    \item{\code{movingMeanMap}:}{Object of class \code{"matrix"} for the
      moving mean of the cell in the ith row and jth column.}
    \item{\code{row}:}{Object of class \code{"integer"} for the row subscripts.}
    \item{\code{col}:}{Object of class \code{"integer"} for the column subscripts.}
    \item{\code{observedPhe}:}{Object of class \code{"numeric"} for the
      observed phenotypic values.}
    \item{\code{adjustedPhe}:}{Object of class \code{"numeric"} for the
      adjusted phenotypic values. }
    \item{\code{movingMean}:}{Object of class \code{"numeric"} for the
      moving means.}
    \item{\code{nValues}:}{Object of class \code{"integer"} for the
      number of non-NA values used for calculating the moving mean.}
    \item{\code{adjModel}:}{Object of class \code{"lm"} for the
      model used for covariate adjustment.}
    \item{\code{correlation}:}{Object of class \code{"numeric"} for the
      coefficient of correlation between the moving means and the
      observed phenotypic values.}
    \item{\code{maxValues}:}{Object of class \code{"integer"} for the
      maximum number of values possible given the design of the grid or
      the number of nearest neighbors.}
    \item{\code{FunCall}:}{Object of class \code{"call"} for the
      function call. }
  }
}

\section{Methods}{
  \describe{
    \item{entryData}{\code{signature(object = "movG")}:  extract all
      relevant information on each entry from the object}
    \item{movingMean}{\code{signature(object = "movG")}:  extract only
      the moving means from the object}
    \item{fitted}{\code{signature(object = "movG")}: extract only the
      adjusted phenotypical values}
    \item{residuals}{\code{signature(object = "movG")}: extract the
      residuals from the model for calculation of the regression coefficient}
    \item{show}{\code{signature(object = "movG")}:  show some
      summary statistics and informations }
    \item{summary}{\code{signature(object = "movG")}: same as show, but
      with a list of the summarized values invisibly returned }
  }
}


\author{ Frank Technow }
\note{The data in the slots \code{observedPhe}, \code{adjustedPhe},
  \code{movingMean}, and \code{nValues} must correspond.}

\seealso{\code{\link{movingGrid}}}



\examples{
showClass("movG")
}
\keyword{classes}
