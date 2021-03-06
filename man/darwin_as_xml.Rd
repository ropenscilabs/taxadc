% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/darwin_as_xml.R
\name{darwin_as_xml}
\alias{darwin_as_xml}
\title{Construct simple darwin core}
\usage{
darwin_as_xml(x)
}
\arguments{
\item{x}{an object of class \code{darwin_simple}, the output from
the function \code{\link[=darwin_simple]{darwin_simple()}}}
}
\value{
an \code{xml_document}
}
\description{
Construct simple darwin core
}
\examples{
library(xml2)
# just dublin core
out <- darwin_simple(type = "PhysicalObject", 
  modified = "2009-02-12", language = "en")
out
xml <- darwin_as_xml(out)
xml_structure(xml)
write_xml(xml, (f <- tempfile(fileext=".xml")))

# add some darwin core
out <- darwin_simple(basisOfRecord = "PreservedSpecimen", 
  taxonID = "12345", scientificName = "Poa annua")
out
xml <- darwin_as_xml(out)
xml_structure(xml)
write_xml(xml, (f <- tempfile(fileext=".xml")))

# together
out <- darwin_simple(type = "PhysicalObject", 
  modified = "2009-02-12", language = "en", 
  basisOfRecord = "PreservedSpecimen", taxonID = "12345", 
  scientificName = "Poa annua")
out
xml <- darwin_as_xml(out)
xml_structure(xml)
write_xml(xml, (f <- tempfile(fileext=".xml")))
}
