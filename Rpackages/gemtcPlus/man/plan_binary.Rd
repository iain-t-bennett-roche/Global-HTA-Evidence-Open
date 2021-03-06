% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plan_binary.R
\name{plan_binary}
\alias{plan_binary}
\title{Creates a model plan for binary data}
\usage{
plan_binary(
  bth.model = c("FE", "RE"),
  engine = "gemtc",
  data.type = "BINARY",
  binary_data_type = "arm_level",
  jags_init = NULL,
  n.chain = NULL,
  n.iter = NULL,
  n.adapt = NULL,
  thin = NULL,
  bth.prior = NULL,
  rsd = 13579,
  model = "binom",
  link = "logit",
  om.scale = 5,
  ...
)
}
\arguments{
\item{bth.model}{One of "FE",  or "RE"}

\item{engine}{Only `gemtc` currently supported}

\item{data.type}{Only "BINARY" supported}

\item{binary_data_type}{One of "relative_effect" or "arm_level"}

\item{jags_init}{A \code{list} containing the jags seeds to set.}

\item{n.chain}{A \code{numeric} value representing n.chains}

\item{n.iter}{A \code{numeric} value representing n.iter}

\item{n.adapt}{A \code{numeric} value representing n.adpat/ n.burnin}

\item{thin}{A \code{numeric} value representing thin}

\item{bth.prior}{Output of using \code{mtc.hy.prior}. Only required if bth.model == "RE"}

\item{rsd}{\code{numeric} seed to be set}

\item{model}{defult "binom"}

\item{link}{default "logit"}

\item{om.scale}{defult is 5}

\item{...}{any other names arguments must match arguments names from \code{mtc.model}}
}
\value{
A list containing model, engine, binary_data_type and model params
}
\description{
Creates a model plan for binary data
}
\examples{
plan_binary(bth.model = "RE", 
           n.chain = 3, 
           n.iter = 6000, 
           thin = 1,
           n.adapt = 1000, 
           link = "logit",
           bth.prior =  gemtc::mtc.hy.prior(type = "var", distr = "dlnorm",-4.18, 1 / 1.41 ^ 2))
}
