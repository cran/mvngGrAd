\name{mvngGrAd-package}
\section{Rdversion}{1.1}
\alias{mvngGrAd-package}
\alias{mvngGrAd}
\docType{package}
\title{
  R Package mvngGrAd: Moving Grid Adjustment In Plant Breeding Field Trials
}
\description{
  The \pkg{mvngGrAd} package allows to perform a moving grid
  adjustment in plant breeding 
  field trials.  Please see the
  included vignette for a more detailed description of the package and the
  rational behind moving grid adjustment.
}
\details{
\tabular{ll}{
Package: \tab mvngGrAd\cr
Type: \tab Package\cr
Version: \tab 0.1.3\cr
Date: \tab 2013-12-11\cr
License: \tab GNU General Public License Version 2, June 1991\cr
LazyLoad: \tab no\cr
}

The main function, \code{movingGrid}, performs the adjustment with a
user designed grid.  The function \code{sketchGrid} helps with designing
the grid by plotting its shape.  The functions \code{fitted},
\code{movingMean} and \code{entryData} are convenience functions to
extract the most relevant information from the object created by
\code{movingGrid}.  The package defines one new class, \code{movG}, and
provides methods for it for the functions, \code{movingMean},
\code{entryData}, \code{fitted}, \code{summary}, \code{show} and
\code{residuals}.  }

 \author{Frank Technow

   at University of Hohenheim, Institute of Plant Breeding, Seed Science
   and Population Genetics, Stuttgart, Germany 

   Maintainer: Frank Technow \email{ Frank.Technow@uni-hohenheim.de }
}
\keyword{ package }

