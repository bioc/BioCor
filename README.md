
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![R build
status](https://github.com/llrs/BioCor/workflows/R-CMD-check/badge.svg)](https://github.com/llrs/BioCor/actions)
[![Build
Status](https://travis-ci.org/llrs/BioCor.svg?branch=master)](https://travis-ci.org/llrs/BioCor)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github//llrs/BioCor?branch=master&svg=true)](https://ci.appveyor.com/projects/llrs/BioCor)
[![codecov](https://codecov.io/gh/llrs/BioCor/branch/master/graph/badge.svg)](https://codecov.io/gh/llrs/BioCor/)
[![Build
Status](https://www.bioconductor.org/shields/build/devel/bioc/BioCor.svg)](https://bioconductor.org/checkResults/devel/bioc-LATEST/BioCor/)
[![Bioc](https://www.bioconductor.org/shields/years-in-bioc/BioCor.svg)](https://www.bioconductor.org/packages/devel/bioc/html/BioCor.html#since)
[![Project Status: Active - The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![CII Best
Practices](https://bestpractices.coreinfrastructure.org/projects/1913/badge)](https://bestpractices.coreinfrastructure.org/projects/1913)
<!-- badges: end -->

# BioCor <img src='man/figures/logo.png' align="right" height="138.5" />

This project wants to allow the user to calculate functional
similarities (or biological correlation as it was named originally hence
the name) and use them for network building or other purposes.

# Installation

It is an R package you can install it from the Bioconductor project
with:

``` r
if (!requireNamespace("BiocManager", quietly = TRUE)) {
      install.packages("BiocManager")
  }
BiocManager::install("BioCor")
```

You can install this version of *BioCor* with:

``` r
if (!requireNamespace("devtools", quietly = TRUE)) {
      install.packages("devtools")
  }
devtools::install_github("llrs/BioCor")
```

# How to use BioCor?

See the
[vignette](https://bioconductor.org/packages/release/bioc/vignettes/BioCor/inst/doc/BioCor_1_basics.html)
in Bioconductor site and the [advanced
vignette](https://bioconductor.org/packages/release/bioc/vignettes/BioCor/inst/doc/BioCor_2_advanced.html).  
Here is a minimum example:

``` r
# The data must be provided, see the vignette for more details.
# Get some pathways from the pathway data
(pathways <- sample(unlist(genesReact, use.names = FALSE), 5))
#> [1] "R-HSA-373752"  "R-HSA-72165"   "R-HSA-1643685" "R-HSA-69278"  
#> [5] "R-HSA-1643685"
# Calculate the pathway similarity of them
mpathSim(pathways, genesReact, NULL)
#>               R-HSA-373752 R-HSA-72165 R-HSA-1643685 R-HSA-69278
#> R-HSA-373752   1.000000000  0.00000000   0.008467401 0.003401361
#> R-HSA-72165    0.000000000  1.00000000   0.027049873 0.000000000
#> R-HSA-1643685  0.008467401  0.02704987   1.000000000 0.155781905
#> R-HSA-69278    0.003401361  0.00000000   0.155781905 1.000000000
```

# Who might use this package?

It is intended for bioinformaticians, both people interested in
*knowing* the functionally *similarity of some genes* or clusters and
people *developing* some other analysis at the top of it.

# What is the goal of this project?

The goal of this project is to provide methods to calculate functional
similarities based on pathways.

# What can be BioCor used for?

Here is a non-comprehensive list:

  - Diseases or drug:  
    By observing which genes with the same pathways are more affected
  - Gene/protein functional analysis:  
    By testing how new pathways are similar to existing pathways
  - Protein-protein interaction:  
    By testing if they are involved in the same pathways
  - miRNA-mRNA interaction:  
    By comparing clusters they affect
  - sRNA regulation:  
    By observing the relationship between sRNA and genes
  - Evolution:  
    By comparing similarities of genes between species
  - Networks improvement:  
    By adding information about the known relationship between genes
  - Evaluate pathways databases:  
    By comparing scores of the same entities

See the [advanced
vignette](https://bioconductor.org/packages/release/bioc/vignettes/BioCor/inst/doc/BioCor_2_advanced.html)

# Contributing

Please read [how to contribute](.github/CONTRIBUTING.md) for details on
the code of conduct, and the process for submitting pull requests.

# Acknowledgments

Anyone that has contributed to make this package be as is, specially my
advisor.
