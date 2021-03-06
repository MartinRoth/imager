% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cimg_class.R
\name{pad}
\alias{pad}
\title{Pad image with n pixels along specified axis}
\usage{
pad(im, nPix, axes, pos = 0, val = 0)
}
\arguments{
\item{im}{the input image}

\item{nPix}{how many pixels to pad with}

\item{axes}{which axes to pad along}

\item{pos}{-1: prepend 0: center 1: append}

\item{val}{value to fill the padding with (default 0)}
}
\value{
a padded image
}
\description{
Pad image with n pixels along specified axis
}
\examples{
pad(boats,20,"xy") \%>\% plot
pad(boats,20,pos=-1,"xy") \%>\% plot
pad(boats,20,pos=1,"xy") \%>\% plot
}
\author{
Simon Barthelme
}

