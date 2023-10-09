\name{extendHorVer}
\section{Rdversion}{1.1}
\alias{extendHorVer}

\title{
Vertical and horizontal extension of the grid ('cross shape')
}
\description{
The function finds the subscripts of the cells that extend from the center in
0, 90, 180 and 270 degree direction ('cross shape'). The function is not intended to be 
called by the user.
}
\usage{
extendHorVer(i, j, shapeCross, rowLimit, colLimit)
}

\arguments{
  \item{i}{
    \code{"integer"}, row subscript of center cell
  }
  \item{j}{
    \code{"integer"}, column subscript of center cell
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

  \item{rowLimit}{
\code{"integer"}, row limit (= number of rows)  of the field layout
}
  \item{colLimit}{
\code{"integer"}, column limit (= number of columns) of the field layout
}
}
\details{
This function is called by the function \code{movingGrid} and is not
intended to be called by the user. 
}
\value{
  A matrix with the row subscripts of the cells in column one and the
  column subscripts in column two.
}

\author{
Frank Technow
}

\examples{
shape <- list(c(1,2,3),
              c(1,2,3),
              c(1:5),
              c(1:5))

extendHorVer(i = 25,
             j = 25,
             shapeCross = shape,
             rowLimit = 50,
             colLimit = 50)

}
\keyword{design}

