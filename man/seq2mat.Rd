% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliar.R
\name{seq2mat}
\alias{seq2mat}
\title{Transforms a vector to a symmetric matrix}
\usage{
seq2mat(x, dat)
}
\arguments{
\item{x}{names of columns and rows, used to define the size of the matrix}

\item{dat}{Data to fill with the matrix with except the diagonal.}
}
\value{
A square matrix with the diagonal set to 1 and \code{dat} on the
upper and lower triangle with the columns ids and row ids from x.
}
\description{
Fills a matrix of \code{ncol = length(x)} and \code{nrow = length(x)} with
the values in \code{dat} and setting the diagonal to 1.
}
\details{
\code{dat} should be at least \code{choose(length(x), 2)} of length. It
assumes that the data provided comes from using the row and column id to
obtain it.
}
\examples{
seq2mat(LETTERS[1:5], 1:10)
seq2mat(LETTERS[1:5], seq(from = 0.1, to = 1, by = 0.1))
}
\seealso{
\code{\link[=upper.tri]{upper.tri()}} and \code{\link[=lower.tri]{lower.tri()}}
}
\author{
Lluís Revilla
}
