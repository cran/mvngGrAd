\name{summary-methods}
\docType{methods}
\alias{summary,movG-method}
\title{ Methods for Function summary in Package "base" }
\description{
 Methods for function \code{summary} in Package "base"
}
\section{Methods}{
\describe{
  \item{object = "ANY"}{default method, the S3 generic}
  
  \item{object = "movG"}{Identical to method for function \code{show},
    except that a list with the summarized values is invisibly returned.
    An additional argument (\code{showSummary} with default value \code{TRUE}) is added.  If
    set to FALSE, the summary is not printed, only the list is invisibly returned.}
}}
\keyword{methods}

