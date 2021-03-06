\name{read_pars}
\alias{read_pars}
\alias{read_psv}
\alias{read_rep}
\title{Read in parameters from an AD Model Builder run}
\usage{
  read_pars(fn, drop_phase = TRUE)

  read_psv(fn, names = NULL)

  read_rep(fn, names = NULL)
}
\arguments{
  \item{fn}{(character) Base name of AD Model Builder}

  \item{drop_phase}{(logical) drop negative-phase (fixed)
  parameters from results?}

  \item{names}{(character) Names of variables}
}
\value{
  List containing the following elements \itemize{
  \item{coefficients}{parameter estimates}
  \item{coeflist}{parameter estimates in list format, with
  proper shape (vectors, matrices, etc.)}
  \item{se}{estimated standard errors of coefficients}
  \item{loglik}{log-likelihood} \item{maxgrad}{maximum
  gradient of log-likelihood surface}
  \item{cor}{correlation matrix}
  \item{vcov}{variance-covariance matrix}
  \item{npar}{number of parameters} \item{hes}{hessian
  matrix (only if no vcov matrix)} }
}
\description{
  Reads coefficients, standard errors, log-likelihoods,
  maximum gradients, correlation and variance-covariance
  matrices from AD Model Builder output files
}
\details{
  Given the output from an ADMB run on FOO.tpl,
  \code{read_pars} reads the files FOO.par (parameters,
  log-likelihood, max gradient); FOO.std (standard
  deviations); FOO.cor (correlations); FOO.rep (report
  variables); admodel.hes for hessian; and admodel.cov for
  covariance matrix.  \code{read_psv} reads the output of
  MCMC runs
}
\section{Warning}{
  The \code{coeflist} component is untested for data
  structures more complicated than scalars, vectors or
  matrices (i.e. higher-dimensional or ragged arrays)
}
\author{
  Ben Bolker
}
\seealso{
  \code{\link{write_pin}}, \code{\link{write_dat}}
}
\keyword{misc}

