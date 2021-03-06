\name{conColScheme}
\alias{conColScheme}

\title{
Change the Color Scheme of a Spectra Object
}

\description{
This function permits you to change the color scheme of an existing \code{"Spectra"} object.
}
\usage{
conColScheme(spectra, old = levels(as.factor(spectra$colors)),
	new = NULL)
}
\arguments{
  \item{spectra}{
An object of S3 class \code{"Spectra"} whose color scheme is to be changed.
}
  \item{old}{
A character vector of the old color names; will be searched for and replaced one-for-one by the character vector in \code{new}.
}
  \item{new}{
A character vector of the new (replacement) color schemes.
}
}
\details{
A grepping process is used.  Depending upon the nature of the old color names to be searched for, you might need to add some grep pattern matching strings to the color name.
}
\value{
An object of S3 class \code{"Spectra"} whose color scheme has been changed.
}
\references{
\url{http://academic.depauw.edu/~hanson/ChemoSpec/ChemoSpec.html}
}

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}
\seealso{
For a discussion of general issues of color, see \code{\link{colorSymbol}}.
}

\examples{
data(CuticleIR)
sumSpectra(CuticleIR)
newSpec <- conColScheme(CuticleIR,
	new = c("pink", "violet", "green", "sienna"))
sumSpectra(newSpec)
}
\keyword{ utilities }
\keyword{ color }