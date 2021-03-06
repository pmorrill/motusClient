% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/srvGPSforReceiver.R
\name{srvGPSforReceiver}
\alias{srvGPSforReceiver}
\title{get the GPS fixes for a receiver from the data server}
\usage{
srvGPSforReceiver(batchID, ts = 0)
}
\arguments{
\item{batchID}{integer scalar batch ID}

\item{ts}{real scalar processing timestamp of latest fix already owned
Default: 0, meaning none.}
}
\value{
data.frame with these columns:
\itemize{
   \item ts       numeric system timestamp
   \item gpsts    numeric GPS timestamp
   \item batchID  integer batch ID
   \item lat      numeric latitude in degrees N (negative is south)
   \item lon      numeric longitude in degrees E (negative is west)
   \item alt      numeric altitude in metres ASL
}
}
\description{
These are the periodic GPS fixes from receivers belonging to the
project, and only makes sense for mobile receiver deployments.
}
\author{
John Brzustowski \email{jbrzusto@REMOVE_THIS_PART_fastmail.fm}
}
