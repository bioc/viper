% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/internal.r
\name{filterRowMatrix}
\alias{filterRowMatrix}
\title{Filter for rows of a matrix with no loss of col and row names}
\usage{
filterRowMatrix(x, filter)
}
\arguments{
\item{x}{Matrix}

\item{filter}{Logical or numerical index of rows}
}
\value{
Matrix
}
\description{
This function filters the rows of a matrix returning always a two dimensional matrix
}
