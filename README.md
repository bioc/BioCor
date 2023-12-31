
<!-- README.md is generated from README.Rmd. Please edit that file -->

# BioCor <img src='man/figures/logo.png' align="right" height="138.5" />

<!-- badges: start -->

[![R build status](https://github.com/llrs/BioCor/workflows/R-CMD-check/badge.svg)](https://github.com/llrs/BioCor/actions)
[![codecov](https://codecov.io/gh/llrs/BioCor/branch/master/graph/badge.svg)](https://codecov.io/gh/llrs/BioCor/)
[![Build Status](https://www.bioconductor.org/shields/build/devel/bioc/BioCor.svg)](https://bioconductor.org/checkResults/devel/bioc-LATEST/BioCor/)
[![Bioc](https://www.bioconductor.org/shields/years-in-bioc/BioCor.svg)](https://www.bioconductor.org/packages/devel/bioc/html/BioCor.html#since)
[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/1913/badge)](https://bestpractices.coreinfrastructure.org/projects/1913)
<!-- badges: end -->

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
#> [1] "R-HSA-372790" "R-HSA-168188" "R-HSA-450294" "R-HSA-109582" "R-HSA-194840"
# Calculate the pathway similarity of them
mpathSim(pathways, genesReact, NULL)
#>              R-HSA-372790 R-HSA-168188 R-HSA-450294 R-HSA-109582 R-HSA-194840
#> R-HSA-372790   1.00000000   0.02341920   0.01924619   0.14301552   0.08478425
#> R-HSA-168188   0.02341920   1.00000000   0.79012346   0.02781641   0.00000000
#> R-HSA-450294   0.01924619   0.79012346   1.00000000   0.02335766   0.00000000
#> R-HSA-109582   0.14301552   0.02781641   0.02335766   1.00000000   0.03689065
#> R-HSA-194840   0.08478425   0.00000000   0.00000000   0.03689065   1.00000000
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
