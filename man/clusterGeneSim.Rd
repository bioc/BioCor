% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clusterGeneSim.R
\name{clusterGeneSim}
\alias{clusterGeneSim}
\alias{clusterGeneSim,character,character,GeneSetCollection-method}
\title{Similarity score between clusters of genes based on genes similarity}
\usage{
clusterGeneSim(cluster1, cluster2, info, method = c("max", "rcmax.avg"), ...)

\S4method{clusterGeneSim}{character,character,GeneSetCollection}(cluster1, cluster2, info, method = c("max", "rcmax.avg"), ...)
}
\arguments{
\item{cluster1, cluster2}{A vector with genes.}

\item{info}{A GeneSetCollection or a list of genes and the pathways they are
involved.}

\item{method}{A vector with two  or one argument to be passed to
combineScores the first one is used to summarize the similarities of genes,
the second one for clusters.}

\item{...}{Other arguments passed to \code{combineScores}}
}
\value{
Returns a similarity score between the genes of the two clusters.
}
\description{
Looks for the similarity between genes of a group and then between each
group's genes.
}
\details{
Differs with clusterSim that first each combination between genes is
calculated, and with this values then the comparison between the two
clusters is done. Thus applying combineScores twice, one at gene level and
another one at cluster level.
}
\section{Methods (by class)}{
\itemize{
\item \code{clusterGeneSim(
  cluster1 = character,
  cluster2 = character,
  info = GeneSetCollection
)}: Calculates the gene similarities in a
GeneSetCollection and combine them using \code{\link[=combineScoresPar]{combineScoresPar()}}

}}
\examples{
if (require("org.Hs.eg.db")) {
    # Extract the paths of all genes of org.Hs.eg.db from KEGG (last update in
    # data of June 31st 2011)
    genes.kegg <- as.list(org.Hs.egPATH)
    clusterGeneSim(c("18", "81", "10"), c("100", "10", "1"), genes.kegg)
    clusterGeneSim(
        c("18", "81", "10"), c("100", "10", "1"), genes.kegg,
        c("avg", "avg")
    )
    clusterGeneSim(
        c("18", "81", "10"), c("100", "10", "1"), genes.kegg,
        c("avg", "rcmax.avg")
    )
    (clus <- clusterGeneSim(
        c("18", "81", "10"), c("100", "10", "1"),
        genes.kegg, "avg"
    ))
    combineScores(clus, "rcmax.avg")
} else {
    warning("You need org.Hs.eg.db package for this example")
}
}
\seealso{
\code{\link[=mclusterGeneSim]{mclusterGeneSim()}}, \code{\link[=combineScores]{combineScores()}} and
\code{\link[=clusterSim]{clusterSim()}}
}
\author{
Lluís Revilla
}
