% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/gpdImAsym.R
\name{gpdImAsym}
\alias{gpdImAsym}
\title{GPD Asymptotic Adjusted Information Matrix (IM) Test}
\usage{
gpdImAsym(data, B, theta = NULL)
}
\arguments{
\item{data}{Data should be in vector form.}

\item{B}{Number of bootstrap replicates for the covariance estimate.}

\item{theta}{Estimate for theta in the vector form (scale, shape). If NULL, uses the MLE.}
}
\value{
statistic Test statistic.

p.value P-value for the test.

theta Value of theta used in the test.

effective_bootnum Effective number of bootstrap replicates used for the covariance estimate. If a
replicate fails to converge, it will not be used in the estimation.
}
\description{
Runs the IM Test using bootstrap estimated covariance matrix. Asymptotically (in sample size) follows the F(3, B-3)
distribution (see reference for details).
}
\examples{
## Generate some data from GPD
x <- rgpd(200, loc = 0, scale = 1, shape = 0.2)
gpdImAsym(x, B = 50)
}
\references{
Dhaene, G., & Hoorelbeke, D. (2004). The information matrix test with bootstrap-based covariance matrix estimation. Economics Letters, 82(3), 341-347.
}
