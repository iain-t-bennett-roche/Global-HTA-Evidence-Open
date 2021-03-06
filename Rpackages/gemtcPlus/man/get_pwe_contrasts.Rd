% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_pwe_contrasts.R
\name{get_pwe_contrasts}
\alias{get_pwe_contrasts}
\title{Utility function to extract HR estimates from piece-wise exponential model fit in (format needed for ggplot)}
\usage{
get_pwe_contrasts(
  fit,
  treatments = NULL,
  ref,
  reverse = FALSE,
  exponentiate = TRUE,
  xmax = 24,
  digits = 3,
  alpha = 0.05
)
}
\arguments{
\item{fit}{\code{rjags} object which is the return of \code{R2jags::jags()}}

\item{treatments}{Vector of treatment names (character string) ordered according to array indexes in jags fit. If NULL treatments extracted from fit}

\item{ref}{Character string identifying reference treatment to use in calculating contrasts.}

\item{reverse}{Logical, if TRUE (default) "ref vs others" is calculated (instead of "others vs ref").}

\item{exponentiate}{Logical, if TRUE (default) contrast estimates are exponentiated in output.}

\item{xmax}{Numeric}

\item{digits}{Numeric}

\item{alpha}{Numeric}
}
\value{
A \code{data.frame} contatining hazzard ratio estimates from an \code{rjags} object which is the return of \code{R2jags::jags()}
}
\description{
Utility function to extract HR estimates from piece-wise exponential model fit in (format needed for ggplot)
}
