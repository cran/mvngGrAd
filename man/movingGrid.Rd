\name{movingGrid}
\section{Rdversion}{1.1}
\alias{movingGrid}
\title{
Moving Grid Adjustment In Plant Breeding Field Trials
}
\description{
The function uses the phenotypic information from plants or plots (entries) in a
designed grid to obtain an adjusted (for environmental
variation) phenotypic value of the entry in the center of the grid.  The
adjustment is done by calculating the mean of all the entries included
and using it as a covariate. 
}
\usage{
movingGrid(rows, columns, obsPhe, shapeCross, layers, excludeCenter = TRUE)
}
\arguments{
  \item{rows}{
An integer vector with the row subscripts of the phenotypic values to be adjusted.
}
  \item{columns}{
An integer vector with the column subscripts of the phenotypic values to be adjusted.
}
  \item{obsPhe}{
A numeric vector with the observed phenotypic values of the entries
that are to be adjusted. The arguments to \code{rows}, \code{columns}
and \code{obsPhe} must, of course, correspond.
}
\item{shapeCross}{
  \code{"list"} of length 4, each element contains the cells that are to
  be included in the grid that extends from the center
  in 0, 90, 180 and 270 degree direction.
  
  Elements can be NULL (no extension in this direction) and must contain
  no '0', duplicated or negative values.

  \code{shapeCross[[1]]}DOWN (180 degree) from the center cell (same column)
    
  \code{shapeCross[[2]]}UP (0 degree) from the center cell (same column)
  
  \code{shapeCross[[3]]}LEFT (270 degree) from the center cell (same row)

  \code{shapeCross[[4]]}RIGHT (90 degree) from the center cell (same row)

}

\item{layers}{
  \code{"integer"}, vector giving the layers to be included
  in the grid that extents from the center cell in all directions other
  than 0, 90, 180 and 270 degree. Can be NULL ( no extension) and
  must not contain '0', negative or duplicated values.
}

\item{excludeCenter}{
  Should the center entry (the one which is adjusted) be excluded from the
  calculation of the moving mean, logical \code{TRUE} (default) or \code{FALSE}.
}
}
\details{
  Please see the included vignette for a more detailed description of the
  rational underlining the adjustment procedure and usage of the function.


  The function \code{movingGrid} calls the functions \code{extendHorVer}
  and \code{extendCircular} to form the grid (i.e. determine the row and
  column subscripts of the cells included).  These two functions are not
  intended to be called by the user.
}
\value{
  An object of class "\code{movG}". See \code{movG-class} for details.
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Frank Technow
}
\note{

  The field layout is always assumed to be a rectangular matrix with
  \code{max(rows) * max(columns)} cells! All of the cells that were
  not mentioned in arguments \code{rows} and \code{columns} are NA. 

  If, for example, the last row was only planted with half the number of
  entries as the other rows, the other half of the row will consist of
  cells with \code{NA} values.

  These \code{NA} values are ignored by \code{movingGrid} and the
  various extractor functions. They do not influence the results of
  \code{movingGrid}.

  The general linear model, that is part of the adjustment procedure, is
  fit via the function \code{lm}.
}


\seealso{
  \code{\link{sketchGrid}}, \code{\link{entryData}},
  \code{\linkS4class{movG}}, \code{\link{mvngGrAd-package}}
}
\examples{

### data creation ###
#####################


### The field plan consists of 50 rows and 50 columns
### (= 2500 cells = 2500 entries)

## row vector

rows <- rep(1:50,each=50)


## column vector
cols <- rep(1:50,50)

## simulation of growing conditions with a horizontal gradient between
## the rows and some random noise within

set.seed(666)
growingCond <- rep(1:50,each=50) + rnorm(2500)

## simulation of the genotypic effects
gEffects <- rnorm(2500,mean=0,sd=5)

## observed phenotypic values
yield <- growingCond + gEffects

## adjustment with movingGrid

cross <- list(c(1),
              c(1),
              c(1:4),
              c(1:4))

exampleResults <- movingGrid(rows = rows,
                             columns = cols,
                             obsPhe = yield,
                             shapeCross = cross,
                             layers = c(1,2),
                             excludeCenter = TRUE)

## a summary

summary(exampleResults)

## the adjusted phenotypic values of the first 25 entries

fitted(exampleResults)[1:25]

## all information on entry, for the first 25

entryData(exampleResults)[1:25,]

## moving means for the first 25

movingMean(exampleResults)[1:25]

}


\keyword{design}

