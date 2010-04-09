\name{circularExtension}
\section{Rdversion}{1.1}
\alias{circularExtension}
\title{
Circular extension of the grid
}
\description{
The function finds the subscripts of the cells that extend the grid in
layers that extend from the center in all directions other than 0, 90,
180 and 270 degree.  The function is not intended to be
called by the user.
}
\usage{
circularExtension(i, j, layers, rowLimit, colLimit)
}
\arguments{
  \item{i}{
\code{"integer"}, row subscript of center cell
}
  \item{j}{
\code{"integer"}, column subscript of center cell
}
\item{layers}{
  \code{"integer"}, vector giving the layers to be included
  in the grid that extents from the center cell in all other directions
  than 0, 90, 180 and 270 degree.  Can be NULL ( no extension) and
  must not contain '0', negative or duplicated values.
}

  \item{rowLimit}{
\code{"integer"}, row limit (= number of rows) of the field layout
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

circularExtension(i = 1,
                  j = 10,
                  rowLimit = 50,
                  colLimit = 50,
                  layers = c(1,2,3))


}


\keyword{ design }

