% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general.r
\docType{methods}
\name{filterCV}
\alias{filterCV}
\alias{filterCV,matrix-method}
\alias{filterCV,ExpressionSet-method}
\title{Coefficient of variation filter}
\usage{
filterCV(expset, ...)

\S4method{filterCV}{matrix}(expset)

\S4method{filterCV}{ExpressionSet}(expset)
}
\arguments{
\item{expset}{Expression set or Matrix containing the gene expression data, with samples in columns and probes in rows. The \code{colnames} attribute should contain the sample names and the \code{rownames} attribute should contain the unique geneIDs}

\item{...}{Additional parameters added to keep compatibility}
}
\value{
CV filtered dataset
}
\description{
This function filter redundant probes based on the highest coefficient of variation
}
\examples{
data(bcellViper, package="bcellViper")
d1 <- exprs(dset)
tmp <- rownames(d1)
tmp[round(runif(10, 1, length(tmp)))] <- tmp[1]
rownames(d1) <- tmp
dim(d1)
d1 <- filterCV(d1)
dim(d1)
}
