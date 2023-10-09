\name{sketchGrid}
\section{Rdversion}{1.1}
\alias{sketchGrid}

\title{
Function to aid with grid design
}
\description{
  The function aids with grid design by plotting the designed grid.
}
\usage{
sketchGrid(i, j, rowLimit, colLimit, layers, shapeCross, excludeCenter,...)
}

\arguments{
  \item{i}{
    \code{"integer"}, row subscript of center cell
  }
  \item{j}{
    integer value, giving the column of the center cell
  }
  \item{rowLimit}{
\code{"integer"}, row limit (= number of rows)  of the field layout
}
  \item{colLimit}{
    \code{"integer"}, column limit (= number of columns) of the field layout
  }
  \item{layers}{
    \code{"integer"}, vector giving the layers to be included
    in the grid that extents from the center cell in all other directions
    than 0, 90, 180 and 270 degree. Can be NULL ( no extension) and
    must not contain '0', negative or duplicated values.
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

\item{excludeCenter}{
  Should the center entry (the one which is adjusted) be included in the
  calculation of the moving mean, logical \code{TRUE} (default) or \code{FALSE}.
}

\item{\dots}{
  further arguments passed to or from other methods
}
}
\details{
  When using the function \code{movingGrid}, this function can be used
  to look at different designs, to see how many and which cells are
  included when the center cell is close to the edge of the field
  layout, and for verifying  that the actual
  arguments to \code{shapeCross} and  \code{layers} really specify the
  intended design.

  \code{sketchGrid} is a generic function with currently one method for
  sketching a designed grid (as needed for function
  \code{movingGrid}). The method is dispatched when the arguments
  \code{shapeCross} and \code{layers} are given (with class
  \code{"ANY"}). 
}
\value{
  A plot is created (via a call to function \code{plot} from the
  traditional R graphics system).
}
\author{
Frank Technow
}


\seealso{
\code{\link{movingGrid}}
}
\examples{
## with method for designed grid

sketchGrid(25,
           25,
           shapeCross = list(c(1:4,7),
             c(1:4,7),
             c(1:4,7),
             c(1:4,7)),
           layers = c(1,2,3,5,6),
           excludeCenter = TRUE,
           rowLimit = 50,
           colLimit = 50)

}

\keyword{ design }

