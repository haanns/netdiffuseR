% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/moran.R
\name{moran}
\alias{moran}
\title{Computes Moran's I correlation index}
\usage{
moran(x, w, normalize.w = TRUE)
}
\arguments{
\item{x}{Numeric vector of size \eqn{n}.}

\item{w}{Numeric matrix of size \eqn{n\times n}{n * n}. Weights. It can be
either a object of class \code{\link{matrix}} or \code{\link[Matrix:dgCMatrix-class]{dgCMatrix}}
from the \code{\link[Matrix]{Matrix}} package.}

\item{normalize.w}{Logical scalar. When TRUE normalizes rowsums to one (or zero).}
}
\value{
Numeric scalar with Moran's I.
}
\description{
Natively built for computing Moran's I on \code{dgCMatrix} objects, this
routine allows computing the I on large sparse matrices (graphs), feature that
is not supported on \code{\link[ape:Moran.I]{ape::Moran.I}}.
}
\examples{
\dontrun{
# Generating a small random graph
set.seed(123)
graph <- rgraph_ba(t = 4)
w <- igraph::distances(igraph::graph_from_adjacency_matrix(graph))
x <- rnorm(5)

# Computing Moran's I
moran(x, w)

# Comparing with the ape's package version
moran(x, w/rowSums(as.array(w)))
ape::Moran.I(x, w)
}
}
\author{
George G. Vega Yon
}
\references{
Moran's I. (2015, September 3). In Wikipedia, The Free Encyclopedia.
Retrieved 06:23, December 22, 2015, from
\url{
https://en.wikipedia.org/w/index.php?title=Moran%27s_I&oldid=679297766
}
}
\seealso{
Other statistics: \code{\link{classify_adopters}},
  \code{\link{cumulative_adopt_count}}, \code{\link{dgr}},
  \code{\link{ego_variance}}, \code{\link{exposure}},
  \code{\link{hazard_rate}}, \code{\link{infection}},
  \code{\link{struct_equiv}}, \code{\link{threshold}},
  \code{\link{vertex_covariate_dist}}
}

