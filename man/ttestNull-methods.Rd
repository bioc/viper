% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general.r
\docType{methods}
\name{ttestNull}
\alias{ttestNull}
\alias{ttestNull,matrix-method}
\alias{ttestNull,ExpressionSet-method}
\title{Null model by sample permutation testing}
\usage{
ttestNull(x, ...)

\S4method{ttestNull}{matrix}(x, y, per = 1000, repos = TRUE,
  seed = 1, cores = 1, verbose = TRUE)

\S4method{ttestNull}{ExpressionSet}(x, pheno, group1, group2, per = 1000,
  repos = TRUE, seed = 1, verbose = TRUE)
}
\arguments{
\item{x}{ExpressionSet object or Matrix containing the test dataset}

\item{...}{Additional parameters added to keep compatibility}

\item{y}{Matrix containing the reference dataset}

\item{per}{Integer indicating the number of permutations}

\item{repos}{Logical, whether the permutations should be performed with reposition}

\item{seed}{Integer indicating the seed for the permutations, 0 for disable it}

\item{cores}{Integer indicating the number of cores to use (set to 1 in windows systems)}

\item{verbose}{Logical, whether progression messages should be printed in the terminal}

\item{pheno}{Character string indicating the phenotype data to use}

\item{group1}{Vector of character strings indicating the category from phenotype \code{pheno} to use as test group}

\item{group2}{Vector of character strings indicating the category from phenotype \code{pheno} to use as control group}
}
\value{
Matrix of z-scores with genes in rows and permutations in columns
}
\description{
This function performs sample permutation and t-test to generate a null model
}
\examples{
data(bcellViper, package="bcellViper")
d1 <- exprs(dset)
dnull <- ttestNull(d1[, 1:10], d1[, 11:20], per=100)
dim(dnull)
plot(density(dnull))
data(bcellViper, package="bcellViper")
dnull <- ttestNull(dset, "description", "CB", "CC", per=100)
dim(dnull)
plot(density(dnull))
}
\seealso{
\code{\link{msviper}}, \code{\link{viper}}
}
