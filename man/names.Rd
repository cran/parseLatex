% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/names.R
\name{names}
\alias{names}
\alias{latexTag}
\alias{catcode}
\alias{envName}
\alias{macroName}
\title{Utility functions finding names and types of objects}
\usage{
latexTag(item)

catcode(item)

envName(item)

macroName(item)
}
\arguments{
\item{item}{A single latex item.}
}
\value{
\code{latexTag()} returns the \link{LaTeX2} tag for the item or \code{NULL}.

\code{catcode()} returns the TeX catcode for the item, or \code{NULL}.

\code{envName()} returns the Latex environment name for an item, or \code{NULL}.

\code{macroName()} returns the Latex macro, or \code{NULL}.
}
\description{
Utility functions finding names and types of objects
}
