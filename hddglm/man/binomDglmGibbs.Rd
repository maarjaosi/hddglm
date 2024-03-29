% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binomDglmGibbs.R
\name{binomDglmGibbs}
\alias{binomDglmGibbs}
\title{Gibbs sampler for dynamic binomial models.}
\usage{
binomDglmGibbs(model = "binom", K, y, x, G, m0, C0, n, omega, alpha, gamma)
}
\arguments{
\item{model}{A string indicating which observation distribution to use. Value can be either "binom" for the binomial or "nbinom" for the negative-binomial distributio.
the default value is "binom".}

\item{K}{Number of iterations of the Gibbs sampler. An integer.}

\item{y}{Realizations of the response variables. A vector of length T.}

\item{x}{Covariates. A \eqn{T \times p} matrix.}

\item{G}{Evolution matrices. An \code{R} function \code{G(t)} that returns the \eqn{p \times p} evolution matrix \eqn{G_t} dependent on the time argument \eqn{t}.}

\item{m0}{Prior mean of \eqn{\boldsymbol{\beta}_0}. A vector of length p}

\item{C0}{Prior covariance of \eqn{\boldsymbol{\beta}_0}. A \eqn{p \times p} matrix}

\item{n}{Number of trials. A parameter of the (negative)-binomial distribution.}

\item{omega}{Initial value for the latent variables. A vector of length T.}

\item{alpha}{Initial values of the shape parameter for the distribution of the elements of the error covariance. Vector of length p.}

\item{gamma}{Initial values of the rate parameter for the distribution of the elements of the error covariance. Vector of length p.}
}
\value{
K samples of the regression parameters and the covariance matrix from the posterior \eqn{p(\boldsymbol{\beta}_{1:T}, W \: \vert \: \boldsymbol{y}_{1:T})}
where \eqn{\boldsymbol{\beta}_t} are the regression parameters of the dynamic binomial model \eqn{(G_t, W)_{t=1}^T}.
A named list containing two matrices. The first matrix \code{W_chain} contains
the diagonal values of sampled values for the error covariance matrix. The k-th column of
\code{W_chain} contains the diagonal for the k-th sample.
The second matrix \code{beta_chain} contains the sampled values for the regression parameters \eqn{\boldsymbol{\beta}_t}
The element in the in \eqn{t}-th row and \eqn{p\cdot(k-1) + i}-th column of \code{beta_chain} contains the K-th sample of the regression parameter \eqn{\beta}_{ti}.
}
\description{
Samples from the posterior distribution of the regression parameters of a dynamic binomial model using a Gibbs sampler based on data augmentation.
}
