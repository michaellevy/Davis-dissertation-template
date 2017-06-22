---
title: "Supplement to Semantic and Network Analysis of Mental Models of Sustainable Agriculture"
author: "Michael Levy, Mark Lubell, Neil McRoberts"
date: "2017-06-19"
documentclass: article
## csl: pnas.csl
bibliography: ../structure/MentalModels.bib
output:
  md_document:
    fig_caption: yes        
    includes:  
      in_header: figPos.tex
---





## Number of Concepts per Cluster

<img src="figure/concepts per cluster-1.png" title="Number of original concepts consolidated into each cluster, at each level of consolidation." alt="Number of original concepts consolidated into each cluster, at each level of consolidation." style="display: block; margin: auto;" />


## What Concepts are Emphasized at the State Level?

<img src="figure/state concepts plot-1.png" title="Centrality and driverness of concepts in statewide aggregate cognitive map at 40-concept consolidation level." alt="Centrality and driverness of concepts in statewide aggregate cognitive map at 40-concept consolidation level." style="display: block; margin: auto;" />

## Regional Analyses

### Centrality vs Popularity




\begin{table}[!htbp] \centering 
  \caption{Regional maps: OLS estimates for the regression of the mean centrality of a concept over the maps in which it appears versus the number of maps in which it appears, the mean driverness of the concept, and the level of concept consolidation. Mean centrality, number of maps, and level of consolidation are all log-transformed and then scaled to have unit standard deviation.} 
  \label{} 
\begin{tabular}{@{\extracolsep{5pt}}lc} 
\\[-1.8ex]\hline 
\hline \\[-1.8ex] 
\\[-1.8ex] & Mean Centrality \\ 
\hline \\[-1.8ex] 
 Number of maps & 0.487$^{***}$ (0.032) \\ 
  Mean driverness & $-$0.182$^{***}$ (0.026) \\ 
  Level of consolidation & 0.264$^{***}$ (0.037) \\ 
  Number of maps $\times$ Level of consolidation & 0.285$^{***}$ (0.038) \\ 
  Intercept & $-$0.117$^{***}$ (0.030) \\ 
 \hline \\[-1.8ex] 
Observations & 630 \\ 
R$^{2}$ & 0.589 \\ 
\hline 
\hline \\[-1.8ex] 
\textit{Note:}  & \multicolumn{1}{r}{$^{*}$p$<$0.1; $^{**}$p$<$0.05; $^{***}$p$<$0.01} \\ 
\end{tabular} 
\end{table} 


### Concept Use Variance

<img src="figure/driverness regression lines-1.png" title="Each line reflects one concept's OLS estimate for the slope of the relationship between the concept's (log-10) centrality and its driverness (0 = pure effect; 1 = pure cause) across regional maps, at various levels of concept consolidation." alt="Each line reflects one concept's OLS estimate for the slope of the relationship between the concept's (log-10) centrality and its driverness (0 = pure effect; 1 = pure cause) across regional maps, at various levels of concept consolidation." style="display: block; margin: auto;" />

<img src="figure/driverness model distributions-1.png" title="Distributions of slope estimates for the OLS regression of a concept's centrality (base-10 logarithm of total degree centrality) versus its driverness ($\in [0, 1]$) in regional maps. Within each level of consolidation, each concept yields one slope estimate, with each map employing the concept forming an observation for the regression. Outlying estimates (outside 1.5 $\times$ the interquartile range beyond the first and third quartiles) are not plotted for visual clarity but are used in determining boxplot positions." alt="Distributions of slope estimates for the OLS regression of a concept's centrality (base-10 logarithm of total degree centrality) versus its driverness ($\in [0, 1]$) in regional maps. Within each level of consolidation, each concept yields one slope estimate, with each map employing the concept forming an observation for the regression. Outlying estimates (outside 1.5 $\times$ the interquartile range beyond the first and third quartiles) are not plotted for visual clarity but are used in determining boxplot positions." style="display: block; margin: auto;" />
