% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pcr.R
\name{pcr}
\alias{pcr}
\title{Credible Regions Method}
\usage{
pcr(mean, cov)
}
\arguments{
\item{mean}{Mean of the regression parameter. Vector of length p.}

\item{cov}{Covariance of the regression parameter. A \eqn{p \times p} matrix.}
}
\value{
A named list containing elements \code{solution_path} and
\code{coef_values}.

The element \code{solution_path} and is a \eqn{p \times p} matrix whose (i,j) element is TRUE
when the j-th parameter belongs into the i-th model else FALSE. The element \code{coef_values}
is a \eqn{p \times p} matrix containing the corresponding parameter values obtained
by solving the related optimization problem.
}
\description{
Calcualtes a solution path by applying the credible regions method.
}
