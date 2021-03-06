% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/syntaxtractor.R
\name{syntaxtractor}
\alias{syntaxtractor}
\title{rmarkdown syntax extractor}
\usage{
syntaxtractor(data_name, repo = "ajdamico/asdfree", ref = "master",
  replacements = NULL, setup_rmd = TRUE, test_rmd = TRUE,
  sample_setup_breaks = NULL, broken_sample_test_condition = NULL)
}
\arguments{
\item{data_name}{a character vector with a microdata abbreviation}

\item{repo}{github repository containing textbook}

\item{ref}{github branch containing textbook}

\item{replacements}{list containing text to swap out and in, using regular expressions}

\item{setup_test}{either "setup" for dataname-setup.R or "test" for dataname-test.R or NULL for everything}
}
\value{
filepath with runnable code
}
\description{
parses asdfree textbook for runnable code.  probably not useful for anything else.
}
\examples{

\dontrun{

replacements_list <- list( c( "C:/My Directory" , tempdir() ) )
runnable_code <- syntaxtractor( "yrbss" , replacements = replacements_list )
source( runnable_code , echo = TRUE )


# usage examples
source( syntaxtractor( "prerequisites" ) , echo = TRUE )
source( syntaxtractor( "ahrf" , replacements = NULL ) , echo = TRUE )
source( syntaxtractor( "nppes" , replacements = NULL ) , echo = TRUE )
source( syntaxtractor( "pisa" , replacements = NULL ) , echo = TRUE )
source( syntaxtractor( "pnad" , replacements = NULL ) , echo = TRUE )
source( syntaxtractor( "scf" , replacements = NULL ) , echo = TRUE )
source( syntaxtractor( "yrbss" , replacements = NULL ) , echo = TRUE )

some_info <- list( "email@address\\\\.com" , "ajdamico@gmail.com" )
source( syntaxtractor( "lavaan" , replacements = some_info ) , echo = TRUE )

}

}
