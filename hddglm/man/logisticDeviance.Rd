% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dicModel.R
\name{logisticDeviance}
\alias{logisticDeviance}
\title{Calculate deviance of the binary logistic model.}
\usage{
logisticDeviance(beta, y, x)
}
\arguments{
\item{beta}{Regression parameters. Vector of length p.}

\item{y}{Value of the response at time t.}

\item{x}{covariate vector; vector of length p}
}
\value{
Value of deviance.
}
\description{
Calculate deviance of the binary logistic model.
}
