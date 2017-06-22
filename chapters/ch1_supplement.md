---
title: Online Supplement to Innovation, Cooperation, and the Structure of Three Regional Sustainable Agriculture Networks in California
subtitle: Regional Environmental Change
author: "Michael Levy* and Mark Lubell"
date: "2017-06-22"
# output: pdf_document
output:
  md_document:
    variant: markdown
documentclass: article
csl: regional-environmental-change.csl
bibliography: ViticultureNetworks.bib
header-includes: 
  - \usepackage{float}

---





*Corresponding author. Department of Environmental Science and Policy, University of California, Davis. malevy@ucdavis.edu



## Supplementary Methods

### ERGMs

The ERGM likelihood is:

\begin{align}
P(Y = \mathbf{y}) = \dfrac{exp(\theta^\top\Gamma(\mathbf{y}, x_y))}
{\sum_{z \in \mathcal{Y}}exp(\theta^\top\Gamma(\mathbf{z}, x_z))}, \mathbf{y} \in \mathcal{Y}
\end{align}

where $\Gamma$ is a vector of sufficient statistics calculated on the network $\mathbf{y}$ and covariate information on the network $x_y$, $\theta$ is the corresponding vector of parameter values, and $\mathcal{Y}$ is the set of possible networks [@frank_markov_1986; @lusher_exponential_2012; @morris_specification_2008].

We obtained parameter estimates for our ERGMs using Markov chain Monte Carlo maximum likelihood estimation (MCMCMLE) [@handcock_statnet:_2016; @hunter_ergm:_2008]. For each network, we used a burn-in interval of 80,000 draws followed by 10,000 samples taken at an interval of 5,000 draws. MCMC and goodness-of-fit diagnostics are presented below.


#### Geometrically-weighted statistics

The geometrically-weighted statistics are sums with decreasing weights for additional units on a given node or edge. For example, any edge augments the GWD statistic, but if the edge is added to higher degree nodes, the statistic increases less than if it were added to a lower degree node. Thus, GWD "may be thought of as a sort of anti-preferential attachment model term" [@hunter_curved_2007], and in this manner parameterizes the degree distribution of a network. The rate of decreasing return as edges are added to higher degree nodes is governed by the $\theta_s$ decay parameter. Small values of $\theta_s$ yield a greater disparity between edges to low- and high-degree nodes. For intuition on the relationship between GWD, $\theta_s$, and the degree distribution, see @levy_gwdegree:_2016. GWESP is similar to a statistic that counts the number of edges with a shared partner (i.e. three times the number of triangles), but with decreasing effect of each shared partner after the first. The rate of decrease is controled by $\theta_t$, with smaller values producing a rapidly diminishing effect of additional shared partners. Specifically, the GWD and GWESP statistics are given by:

\begin{align}
GWD = e^{\theta_s} \sum_{i=1}^{N-1}[1-(1-e^{-\theta_s})^{i}]D_i(\mathbf{y});
\end{align}

\begin{align}
GWESP = e^{\theta_t} \sum_{i=1}^{N-2}[1-(1-e^{-\theta_t})^{i}]EP_i(\mathbf{y}),
\end{align}

where $D_i$ is the number of nodes of degree $i$ and $EP_i$ is the number of edges with $i$ shared partners. We fixed decay parameter values and held them constant across all three networks to facilitate comparison of the parameter estimates. For GWD, $\theta_s = 3.0$ ensures that the statistic captures popularity effects among high degree nodes. For GWESP, $\theta_t = 0.7$ produces a moderately declining marginal effect of shared partners.


#### Modeled edge probabilities

The probability of observing a tie between nodes $i$ and $j$ is:

\begin{align}
P(y_{ij} | \mathbf{y}_{ij}^-, \theta) = logistic(\theta^\top \delta_{\Gamma}(\mathbf{y}_{ij})),
\end{align}

where $\delta_{\Gamma}(\mathbf{y}_{ij})$ is a vector of change statistics associated with the $ij$ edge given by $\Gamma(\mathbf{y}_{ij}^+) - \Gamma(\mathbf{y}_{ij}^-)$, where $\mathbf{y}_{ij}^+$ is the network with the $ij$ tie present and $\mathbf{y}_{ij}^-$ with the $ij$ tie absent, and logistic is the inverse logit function: $(1+e^{-x})^{-1}$ [@hunter_ergm:_2008; @desmarais_micro-level_2012].

We parse edge probabilities by both nodal and dyadic attributes. Parsing edge probabilities by nodal attributes (profession and degree) results in each dyad being included twice, once for each actor in the dyad.


## Supplementary Results

<!-- ### Descriptive Statistics -->


\begin{table}[ht]
\centering
\caption{Descriptive statistics for viticulture knowledge networks from three winegrowing regions in California.} 
\begin{tabular}{lccc}
  \hline
 & Central Coast & Napa & Lodi \\ 
  \hline
Actors & 785 & 540 & 447 \\ 
  Average Number Ties & 2.4 & 2.6 & 3.0 \\ 
  Density & 0.0031 & 0.0048 & 0.0068 \\ 
  Connectedness & 0.73 & 0.79 & 0.84 \\ 
  HMPL & 8.3 & 6.1 & 5.0 \\ 
  Degree Centralization & 0.019 & 0.036 & 0.081 \\ 
  Clustering & 0.034 & 0.034 & 0.057 \\ 
   \hline
\end{tabular}
\end{table}


<!-- ### Degree Distributions -->

![Degree distributions of viticulture knowledge networks from three winegrowing regions in California.](figure/degree distributions-1.png)

\newpage

### ERGM Goodness-of-fit



![Goodness of fit plots for ERGM of viticulture knowledge networks in Central Coast.](figure/unnamed-chunk-1-1.png)![Goodness of fit plots for ERGM of viticulture knowledge networks in Napa.](figure/unnamed-chunk-1-2.png)![Goodness of fit plots for ERGM of viticulture knowledge networks in Lodi.](figure/unnamed-chunk-1-3.png)

\newpage

### ERGM MCMC Diagnostics

<!-- #### Central Coast -->

![MCMC traces for ERGMs of viticulture knowledge network in Central Coast.](figure/unnamed-chunk-2-1.png)

<!-- #### Napa -->

![MCMC traces for ERGMs of viticulture knowledge network in Napa.](figure/unnamed-chunk-3-1.png)

<!-- #### Lodi -->

![MCMC traces for ERGMs of viticulture knowledge network in Lodi.](figure/unnamed-chunk-4-1.png)

\newpage

