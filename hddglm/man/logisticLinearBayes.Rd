% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logisticLinearBayes.R
\name{logisticLinearBayes}
\alias{logisticLinearBayes}
\title{Linear Bayes Method for the dynamic logistic binary model}
\usage{
logisticLinearBayes(y, x, m0, C0, G, W)
}
\arguments{
\item{y}{Realizations of the response variables. A vector of length T.}

\item{x}{Covariates. A \eqn{T \times p} matrix.}

\item{m0}{Prior mean of \eqn{\boldsymbol{\beta}_0}. A vector of length p.}

\item{C0}{Prior covariance of \eqn{\boldsymbol{\beta}_0}. A \eqn{p \times p} matrix.}

\item{G}{Evolution matrices. An \code{R} function \code{G(t)} that returns the \eqn{p \times p} evolution matrix \eqn{G_t} dependent on the time argument \eqn{t}.}

\item{W}{Error covariance.  A \eqn{p \times p} matrix.}
}
\value{
A named list. First element \code{m.list} is a list of length \eqn{T} containing the posterior means
of the regression parameters. Second element \code{C.list} is a list of length \eqn{T} containing the posterior
covariance matrices of the regression parameters.
}
\description{
Calculates estimates of the posterior means and covariance matrices
of regression parameters of a dynamic binary logistic model using the Linear Bayes method.
}
