% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graphs.R
\name{get_graph}
\alias{get_graph}
\title{Convert a function map to a directed graph}
\usage{
get_graph(map, only_me = TRUE)
}
\arguments{
\item{map}{The function map.}

\item{only_me}{Whether to include only the functions under study
(i.e. the functions defined in the script(s) or the package),
or all functions called by them as well.}
}
\value{
The graph as an adjacency list.
}
\description{
The graph is represented as an adjacency list. It is a named
list of character vectors, and a character vector contains
the successors of the vertex.
}
\keyword{internal}

