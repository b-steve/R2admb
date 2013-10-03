#!/bin/bash
echo "library(roxygen2); roxygenise('~/R2admb/R2admb')" > ~/R2admb/R2admb/roxygen.r
R --slave < ~/R2admb/R2admb/roxygen.r
rm ~/R2admb/R2admb/roxygen.r
R CMD check .
R CMD INSTALL .
rm -rf ..Rcheck/
