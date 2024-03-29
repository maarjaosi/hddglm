% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimateMoments.R
\name{estimateMoments}
\alias{estimateMoments}
\title{DGLM Moment estimates.}
\usage{
estimateMoments(chain, p, t, K, burn_in = 500)
}
\arguments{
\item{chain}{The MCMC chain of the regression parameters of a DGLM.}

\item{p}{Number of parameters.}

\item{t}{Time step for which the moments are calculated}

\item{K}{Number of runs of the MCMC algorithm .}

\item{burn_in}{The burn-in period for the MCMC chain. An integer.}
}
\value{
A named list. The first element \code{mean} is the mean and the second element \code{cov} is the covariance of the DGLM regression parameter
at time t
}
\description{
Estimates the mean and covariance of the regression parameter \eqn{\boldsymbol{beta}_t} of a DGLM
from values produced by an MCMC algorithm.
}
