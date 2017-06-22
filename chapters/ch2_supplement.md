---
title: "Supplement to: The Structure of Experts' Mental Models of Sustainable Agriculture"
author: "Michael A. Levy, Mark N. Lubell, Neil McRoberts"
date: "2017-06-22"
# output: pdf_document
output:
  md_document:
    variant: markdown
documentclass: article
bibliography: "MentalModels2.bib"
csl: nature_sustainability/nature-communications.csl
header-includes: 
  - \usepackage{caption}
  - \usepackage{float}
---

<!-- \captionsetup[table]{labelformat=empty} -->





Table B.1 presents a model summary table for the ordinal logistic regression of systems thinking cluster on education and experience. This is the same model presented in Figure B.3 of the manuscript.

Figure B.1 presents the first two principle components of the cognitive maps' distribution on the six dimensions of network motifs. The first (green) cluster is characterized by the ubiquitous motif of multiple causes. The second (orange) cluster adds moderated and multiple effects, and the third (purple) cluster adds the three rarest structures: indirect effects, bidirectional effects, and feedback loops.

Figure B.2 presents posterior parameter probability distributions for the relationship of the prevalence each of the six network motifs with education and years of experience in agriculture. The more of the probability mass that lies above/below zero, the more consistently education or experience is associated with an abundance/dearth of that motif.

Figure B.3 presents the correlation matrix across the 148 maps of all the network-level statistics we calculated and the six motif's CUG-test results. Variables are arranged by the angular order of the eigenvectors of the correlation matrix.

![First two principle components of mental model structure based on the prevalence of microstructures relative to random graphs. The larger points indicate the centroid of each cluster.](figure/CUG biplot-1.png)

![Distributions of parameter values for prevalence relative to chance of micro-level network structures as a function of the individual's level of formal education and years of experience.](figure/ed exp models-1.png)




![Correlations of all measured network statistics and CUG test results. LUBedness is least-upper boundedness; LLBedness is least-lower boundedness, i.e. LUBedness of the transpose of the adjacency matrix. Astricks reflect significant correlations at $\alpha = 0.05$.](figure/all correlations-1.png)




Table: Marginal posterior summary of ordinal logistic regression of model cluster as a function of experience and education.

Parameter               Mean    Lower 90% CI    Upper 90% CI 
---------------------  ------  --------------  --------------
$\beta_{Education}$     0.17       -0.09            0.42     
$\beta_{Experience}$    0.11       -0.14            0.36     

