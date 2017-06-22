---
numbersections: true
header-includes:
    - \usepackage{appendix}
    - \usepackage{caption}
	- \usepackage{float}
---
\numberwithin{figure}{section}
\numberwithin{table}{section}
\pagenumbering{roman}
\setstretch{1}
\setlength{\parskip}{9pt}
<!-- \captionsetup[table]{labelformat=empty} -->

\begin{center}

\textbf{Sustainable Agriculture Knowledge Networks and Mental Models}  

By

Michael Andrew Levy

B.S. (Fort Lewis College) 2004  \\
M.S. (West Virginia University) 2012

DISSERTATION

Submitted in partial satisfaction of the requirements for the degree of

DOCTOR OF PHILOSOPHY

in

Ecology

in the

OFFICE OF GRADUATE STUDIES

of the

UNIVERSITY OF CALIFORNIA

DAVIS

\vspace{36 pt}

Approved:

\setlength{\parskip}{20pt}

\underline{\hspace{8cm}}\\
Mark Lubell, Chair

\underline{\hspace{8cm}}\\
Neil McRoberts

\underline{\hspace{8cm}}\\
Gwen Arnold

\vspace{36 pt}

Committee in charge

2017

\end{center}
\setlength{\parskip}{5pt}

\newpage

\hypersetup{linkcolor=black}
\tableofcontents
\setlength{\parindent}{1cm}

\newpage
\setstretch{2}
\setlength{\parskip}{6pt}

## Abstract

Agriculture faces a daunting challenge: To feed a growing population in the face of declining natural resources and increasing concern for environmental externalities. At the same time, knowledge demands on producers and other stakeholders are increasing as a function of both technical and regulatory complexity. To facilitate the transition to sustainable agriculture, it is critical to understand what stakeholders' goals are, how they perceive the system to function, and how knowledge moves through the community. In chapter one, we test hypotheses about the prevalence of structures that facilitate diffusion and collective action in three agriculture communication networks in California. For chapters two and three, we elicited mental models of sustainable agriculture from leading thinkers throughout California. In chapter two, we develop a method to examine how systems thinking is embodied in the mental models, and we cluster the models into three modes of systems thinking characterized by increasing level of complexity. In chapter three, we explore the content of the mental models, create a single model that integrates the participants' understanding, and test hypotheses about how goals and means are structured in mental models.

\subsubsection*{Chapter 1}

Regional agroecological systems are examples of complex adaptive systems, where sustainability is promoted by social networks that facilitate information sharing, cooperation, and connectivity among specialized components of the system. Much of the existing literature on social capital fails to recognize how networks support multiple social processes. Our paper overcomes this problem by analyzing how the social networks of winegrape growers exhibit structural features related to multiple social processes: ties to central actors that build bridging social capital and facilitate the diffusion of innovations, ties that close triangles and build bonding social capital to solve cooperation dilemmas, and ties to individuals that span community boundaries to connect specialized components of the system. We use survey data to measure the communication networks of growers in three viticulture regions in California. A combination of descriptive statistics, conditional uniform random graph tests, and exponential random graph models provides empirical support for our hypotheses. The findings reflect regional differences in geography and institutional histories, which may influence the capacity to respond to regional environmental change.

\subsubsection*{Chapter 2}

Progress in sustainability science is hampered by definitional and normative debates over concepts like sustainable agriculture and their application to complex systems. Systems thinking has been advocated as a model for improving understanding and management of complex systems, but theory and methods to analyze systems thinking remain underdeveloped. We develop a new way of assessing systems thinking by applying social network tools to the analysis of mental models. We examine the cognitive maps of 148 thought leaders in sustainable agriculture in California and examine the extent to which each map captures six fundamental causal patterns. We find that it is difficult for people to think about the more complex forms of causality that are associated with systems thinking. Our findings have important implications for individual and collective decision-making about sustainable agriculture and other policy debates featuring ill-defined, normative concepts applied to complex systems. 

\subsubsection*{Chapter 3}

Sustainable agriculture means different things to different people. It connotes multiple, often nebulous goals, each of which could potentially be facilitated by various means, but neither the goals nor the means to achieve them are widely agreed upon. Furthermore, it is a profoundly interdisciplinary topic, spanning physical, biological, and social sciences, making it difficult for any individual to achieve comprehensive understanding. To bring light to what sustainable agriculture means to experts, we elicited the mental models of 148 experts from a variety of professions and regions of California. We use semantic analysis to translate the models into a single set of concepts, which allows us to aggregate the models into a single model representing the combined understanding of the experts. We compare which concepts are emphasized by different regions in California, which align with regional challenges. We also analyze the centrality of the various concepts involved in sustainable agriculture and whether they are more drivers or results of the system. Central concepts tend to be results that are shared by many experts, while peripheral concepts tend to be drivers that are more idiosyncratic. This structural analysis suggests that goals (results) serve as cognitive access points and can be used to initiate dialog among stakeholder groups, while strategies (drivers) to achieve them are likely to be more contentious. The aggregate model can provide guidance to policy makers looking to understand stakeholders' priorities and how to accomplish goals, and we provide guidance for those wishing to do so.


\newpage

## Acknowledgements

I have been exceptionally fortunate in the mentors and teachers I've had during my PhD and throughout my academic career. All graduate students should get to have an advisor like Mark Lubell. He has consistently made himself available and shows up to every meeting ready to dig in and help. When I've needed to be pushed forward, he's pushed, and when I've wanted to explore, he's given me that freedom. He has been generous with resources and as an advocate. And in the final test of an advisor, when I told him my path would take me away from academia, he provided support and wished me well. I am deeply grateful.

I would not be the data scientist I am if I hadn't had the dumb luck to cross paths with two professors who could each credibly compete for the title of best computational statistics instructor in the country. Richard McElreath taught me to think statistically, and Duncan Temple Lang taught me to think computationally, and I am lucky to have happened into their classrooms.

Neil McRoberts has guided much of the last two-thirds of this dissertation, both in planning and analysis. His domain seems to cover a greater amount of theory than any one mind should be able to organize, and his contributions to our discussions have been engaging, enlightening, and fruitful. Gwen Arnold added rigor to the environmental policy aspect of my studies and has provided incisive and useful feedback whenever asked. 

UC Davis is a special place to do a PhD. The graduate group structure allows a lot of customization, and I am grateful to have been able to put together a course of study that was so exciting. Students here are engaged and helpful, and the Center for Environmental Policy and Behavior, Davis R Users' Group, Network Science Group, and Data Science Initiative all helped get me through.

If a PhD is a crowning achievement, there are layers of foundation underneath, and I want to thank all of the teachers who went beyond what they had to do, challenged me, believed in me, and inspired me. Plutarch wrote that "the correct analogy for the mind is not a vessel that needs filling, but wood that needs igniting", and I have had many powerful flames applied to my wooden mind over the years. I am particularly grateful to Tom Bancroft, Steve Lantz, Pat Streeter, John Larue, Rob Milofsky, and Bill Peterjohn. 

My parents Andy and Alice have been doggedly consistent in their belief in and support of me. My sister Julie has been my confidant and strategic advisor throughout. Corinna has supported me in more ways than I could count, while going through her own educational trial. Finally, thanks to Merry and Yogi for reminding me that computers are boring and now would be a good time to take a break and play.


\newpage

\pagenumbering{arabic}
\setcounter{page}{1}

\setstretch{1}

# Innovation, Cooperation, and the Structure of Three Regional Sustainable Agriculture Networks in California

\setstretch{2}

Michael Levy and Mark Lubell












## Introduction

This paper analyses the structure of social networks among winegrape growers in three regions of California, USA that have implemented sustainability partnerships. As with other examples of regional environmental change, winegrape growers make decisions in the context of an agroecological system that must adapt to changing ecological, economic, and social processes. To help growers adapt to these changes, sustainability partnerships aim to build social networks that enable learning, innovation, and cooperation. Our empirical study estimates the extent to which grower's social networks feature structural configurations associated with these key social processes.

Our analysis contributes to a broad literature that has emerged in the past twenty years across the social sciences, which has established the relevance of social networks among individuals, organizations, and political institutions for responding to regional environmental change [@adger_social_2003; @barnes_social_2016; @bodin_social_2011; @carlsson_policy_2000; @janssen_toward_2006; @weible_beliefs_2005]. Sometimes referenced under the term "social capital", social networks are hypothesized to facilitate social processes such as learning and cooperation that enable human societies to adapt to dynamic and complex social-ecological systems [@boyd_cultural_2011; @coleman_social_1988; @ostrom_governing_1990]. For example, @doughty_building_2016 highlights how local policy partnerships can build capacity for resilience by strengthening local networks. Likewise, @dow_role_2013 describe how bonding, bridging, and linking network activities are used by management planning agencies to facilitate climate adaptation. We build on this work with rigorous statistical tests for specific structural signatures of these forms of social capital across multiple networks.

In the context of agricultural systems, in both developed and developing countries social networks have been found to be among the most important variables for innovation and cooperation [@baumgart-getz_why_2012-1; @prokopy_determinants_2008]. For example, @conley_learning_2010 find that farmers in Ghana innovate by mimicking the practices of their successful immediate contacts. @fafchamps_risk-sharing_2003 illustrate how subsistence growers in the Philippines cooperate by informally pooling risk through strong network ties. In California, @hoffman_network-smart_2015 find that informal, social learning channels are used far more than formal resources to learn about vineyard management practices.

However, this literature faces two major puzzles. First, while most researchers agree networks matter, there is no consensus on how different types of networks affect behavior in different regional contexts [@bodin_role_2009-3; @janssen_toward_2006]. Second, researchers often ascribe only a single social process to networks---for example, learning or cooperation---instead of analyzing how networks support multiple social processes that contribute to sustainability and resiliency. For instance, in the face of changing water availability in agroecological systems, agricultural producers must learn about new problems in the short-term (how should I irrigate my crops given current water availability?) and long-term (how much water will be available in the next decade, given drought and climate change?) and self-organize to change behaviors and institutions (how can our community reduce groundwater pumping?). Networks that support multiple social processes are more capable of positively contributing to sustainable and resilient social-ecological systems in the face of environmental change. 

This paper addresses the puzzle of multiple social processes by arguing that the observed structures in social networks are signatures of three underlying social processes that motivate interaction in agroecological systems:  diffusion of innovation, cooperation, and boundary-spanning. Diffusion of innovation theory hypothesizes that innovation is facilitated by networks that efficiently transmit information. Cooperation is facilitated by networks that allow the development of reputation and trust. Boundary-spanning networks link together specialized components of food systems, which helps bring different types of expertise into the overall agricultural value chain. 

We test the basic hypotheses emerging from these arguments using surveys of over 500 growers in three different regions to measure their social network relationships. As discussed below, each of these social processes is represented by different structural characteristics of networks, which provides the basis for statistical models that estimate the frequency of different structural motifs that can be thought of as the local building blocks for global network structures. The social processes can be considered generative models for social network structure: Local social processes affect with whom each individual forms ties, and the aggregate of those ties form structural signatures of the social processes. We also examine the extent to which these structural motifs vary across different regions. 

Agroecological systems are important examples of complex social-ecological systems. Globally, agricultural systems have been crucial to the development of modern civilization and they are now facing significant sustainability issues such as food security, natural resource management, and climate change. To address these issues, agricultural systems must catalyze the diffusion of innovations like new farm management practices [@baumgart-getz_why_2012-1; @saltiel_adoption_1994], cooperation to address common-pool resource problems like groundwater management [@agrawal_common_2001-1; @dietz_drama_2002; @henry_information_2011], and boundary-spanning across different specialized components of food systems [@hoffman_network-smart_2015; @lubell_extension_2014]. Viticulture is a particularly useful example because it is a highly innovative and economically viable industry that is increasingly experimenting with sustainability programs, policies, and practices [@lubell_innovation_2011; @warner_agroecology_2007]. While our analysis identifies some of the general processes we expect are important in agroecological systems, it is also important to consider more comparative research given regional differences in cropping systems, agroecological, and social contexts.

In the next section, we discuss how the social network literature has viewed the relationship between social capital, network structure, innovation, and cooperation. We then describe our hypotheses about how network structures develop in the context of agroecological systems. 

### Networks: The Multiple Faces of Social Capital

A central theme of the environmental change and broader social science literature is that networks constitute a form of social capital that affects the ability of individuals and groups to acquire resources and achieve goals [@coleman_social_1988; @putnam_prosperous_1993]. Networks are often advocated for enhancing resilience and adaptive capacity in resource management [@adger_social_2003; @folke_adaptive_2005-1; @weible_beliefs_2005], but it is increasingly recognized that a prescription of "more networks" is insufficient: particular network structures emerge in various situations and are needed for certain capacities [@newman_network_2005; @bodin_social_2006]. Network density, for example, may promote trust and compliance with social norms [@coleman_social_1988; @granovetter_economic_1985], but too much density may lead to homogeneity and reduce capacity for innovation [@bodin_information_2005-2; @oh_group_2004]. Therefore, in different kinds of decision contexts and over time, we expect to observe different types of social network structures. 

The argument that networks support multiple social processes builds on the classic distinction in the social network literature between "open" and "closed" network structures. This distinction appears in a variety of flavors: weak versus strong ties [@granovetter_strength_1973], bridging versus bonding social capital [@putnam_prosperous_1993; @adger_social_2003], structural holes versus redundant networks [@burt_network_2000-1], and cooperation versus coordination networks [@berardo_self-organizing_2010]. Coleman [@coleman_social_1988] and Granovetter [@granovetter_economic_1985] argue that closure, a network tie between two individuals who share a common partner, is a key aspect of social capital, facilitating cooperation through trust and the ability to sanction non-cooperators. In contrast, Burt [@burt_network_2000-1] argues that individuals with links to many other non-redundant groups and individuals---open structures that bridge what he calls "structural holes" between groups---are located in advantageous brokerage positions, with access to diverse sources of information and other resources. Adger [@adger_social_2003] argues that strong, local bonding ties confer private benefits while bridging or "networking" ties can enhance collective governance. More recently, Berardo and Scholz [@berardo_self-organizing_2010] argue that the advantages of open versus closed structures depend on the type of issue at hand. In collective action problems that mainly require coordination, open structures facilitate information transmission by forming ties to central brokers, whereas in more problematic cooperation problems with free-riding incentives, reciprocal and transitive ties that provide closure can enable cooperation. 

While the distinction between open and closed networks is useful, we argue that networks may include a mixture of both open and closed structures in order to support multiple social processes. An actor may have some local ties that facilitate cooperation, such as reciprocity or closed triangles. That same actor may also have ties to central actors that serve as information hubs, or to disparate groups that provide novel information or resources. Aggregated to the network level, closed ties create high levels of clustering, while open structures create centralized networks with short average path lengths that facilitate the rapid diffusion of information. Networks with structures that enable multiple types of social capital contribute to the resilience of complex adaptive systems, which must simultaneously have the capacity to learn and self-organize [@anderies_panaceas_2007; @levin_social-ecological_2013; @simon_organization_1977]. The balance between open and closed network structures is also a feature of the canonical "small-world" network model [@watts_collective_1998].

### Linking Network Structures to Key Social Processes

In this section, we describe the three key social processes that motivate social relationships in agroecological systems, and how they are linked to specific structural properties of networks. Articulating the correspondence between a social process and the network measures that are included in statistical models is necessary to develop hypotheses that can be empirically tested with our winegrape grower data. We test for the structural signature of each social process first by comparing the observed frequency of relevant network statistics to the distribution of statistics in uniform random graphs that make no assumptions about generative social processes, then more rigorously with exponential random graph models (ERGMs) that control for concomitant effects of multiple social processes. 

It is critical to recognize that this empirical strategy does not directly observe the social processes at the individual level, for example the variables affecting an individual's adoption of an agricultural management practice. Rather, the logic of the argument is that particular types of network structures are more or less likely to occur conditional on the operation of a particular social process. The structural motifs in the network are analogous to the fingerprints of hypothesized social processes. 

#### Innovation, short path lengths, and centralization

Diffusion of innovation is the classic theory used to describe the process by which individual growers adopt agricultural practices [@rogers_diffusion_2003; @ryan_diffusion_1943]. The basic version of diffusion of innovation theory is a variation on rational choice theory, where actors make decisions based on the benefits and costs of a potential innovation. It is assumed that the innovations confer only private costs and benefits at the individual level; the payoff from the adoption decision is independent of the actions of others. Because farmers operate in markets and ecosystems, strict independence is never realized, but it may be a reasonable approximation for some farm-management decisions [@drummond_agricultural_2010]. In this context networks serve primarily to transfer information about the innovation's benefit/cost ratio, and thus can be considered a form of social learning [@hoffman_network-smart_2015; @lubell_innovation_2011].

Diffusion on networks is facilitated by short paths between pairs of nodes [@jackson_social_2010]. At the individual level, rapid access to information is achieved by linking to the center of the network, where information accrues from all parts of the network. At the network level, this generates centralized networks, i.e. networks with high-variance degree distributions. To see why, consider the extremes for a network with $N$ nodes and $N - 1$ edges: If one central node is connected to every other node (i.e. a star graph), the average path length is minimal, $2 \times (1 - \frac{1}{N})$, and degree centralization is maximal. The central node serves a coordinating hub so that wherever information originates, it is within two edges of every other node. At the other extreme, consider a line graph in which every node is connected to two neighbors (except the two nodes on the ends, which have one neighbor each). This network has maximal average path length, $\frac{N + 1}{3}$, and minimal degree centralization. Wherever it arises, information will diffuse slowly. In general, links to central nodes shorten paths and speed diffusion on networks [@leavitt_effects_1951; @peres_impact_2014].

We provide an initial test for this aspect of the networks by comparing observed path lengths and centralizations to those of uniform random graphs of the same sizes and densities as the observed networks. For each network, we summarize path lengths with the harmonic mean path length (HMPL), which accounts for disconnected dyads [@newman_structure_2003], and centralization with degree centralization, a measure of the absolute difference of degree of each node in the network from the highest-degree node, normalized to the maximum possible value for a network of that size [@freeman_centrality_1978]. In the ERGM context, we test for network centralization with a geometrically-weighted degree (GWD) term, which measures repulsion of edges from high-degree nodes. In networks where access to innovation is a priority of individuals, we expect to see shorter average path lengths and negative GWD estimates [@levy_gwdegree:_2016].

***Hypothesis 1:** HMPLs will be shorter in empirical networks than simulated random graphs, and GWD estimates in ERGMs will be negative, reflecting a tendency for edges to concentrate on popular actors.*

#### Cooperation and triadic closure

In contrast to the classic diffusion of innovation model, there are many agricultural practices for which the payoff is conditional on the actions of others, implying interdependence among growers. For example, pest and disease processes spread over property lines, so if one grower fails to adequately control a disease, the disease prevention efforts of nearby growers will be less effective. Environmental public goods have similar attributes; for instance, one grower's efforts to improve water quality by reducing pollution from irrigation runoff will be ineffective unless other growers in the same watershed also reduce their polluted runoff. These contexts often resemble the strategic structure of a prisoner's dilemma, where cooperation requires overcoming free riding incentives. 

A standard hypothesis within the social capital literature is that closed networks facilitate cooperation by enabling mechanisms of trust and reputation. The classic closed structure is the transitive triangle, where relationships between individuals i-j and i-k facilitate the relationship j-k. These structures help maintain reputation and trust by enabling indirect reciprocity and social sanctions for free-riders, and by providing third-party verification of cooperative or uncooperative behavior. In a network where diffusion of innovation is the only important process, the redundant ties in closed triangles would have little value because the information that comes through them is accessible through the shared partner. However, the redundancy of ties that close triangles allows for verification of information, which builds trust, and opens the possibility of social sanctioning, which promotes cooperative behavior [@berardo_self-organizing_2010; @bodin_role_2009-3; @ostrom_governing_1990]. Hence, closed networks are an important component of community-level social capital thought to enable collective action [@coleman_social_1988; @putnam_prosperous_1993]. 

We test for closed network structures first by comparing observed levels of triadic closure to levels found in uniform random graphs of the same size and density, and then via the geometrically-weighted edgewise shared partners (GWESP) statistic in ERGMs to test whether there is a tendency for triadic closure above what would be expected by other tie-formation forces in the network (e.g. regional homophily). In networks where cooperation challenges are being navigated, we expect a large number of complete triangles and positive GWESP estimates.

***Hypothesis 2:** Clustering coefficients will be greater in empirical networks than simulated random graphs, and GWESP estimates in ERGMs will be positive, reflecting a tendency for triadic closure.*


#### Boundary spanning and structural holes

Another important social process in agroecological and other complex adaptive systems is the transfer of information across specialized components of the system. Different components of the system may develop specialized knowledge or capacities, which then must be linked in order to accomplish different tasks. This argument parallels Burt's concept of structural holes, where individuals whose ties span different parts of the system can access more and a greater variety of resources [@burt_structural_2004]. 

In the context of agriculture, university extension has traditionally filled this role by serving as a bridge between science, policy-makers, and growers. However, this classical model is rapidly being replaced by one of a network of distributed, specialized knowledge, in which both formal outreach professionals and others serve as knowledge brokers [@clark_boundary_2016; @lubell_extension_2014]. For example, most cropping systems in California involve certified Pest Control Advisors or Crop Consultants who specialize in specific aspects of agricultural decision-making, and individual growers contract with these specialists to assist the overall farming operation. In other cases, large-scale farming operations create their own in-house expertise. The complex, specialized nature of agricultural knowledge networks challenges the broad stereotype of "one farmer, one farm". Agricultural food systems and innovation systems require sharing of knowledge and coordinated action from many different specialized individuals and organizations [@klerkx_adaptive_2010; @mccullough_evolution_2016; @wigboldus_systemic_2016].

Our networks are comprised of growers and outreach professionals, and some individuals who fall into both categories. We expect that these "outreach-growers" will play a boundary-spanning role because they have specialized knowledge, but at the same time their grower perspective engenders trust from other growers. In network terms, we expect these outreach-growers to occupy positions with high betweenness centrality; that is, they sit on many shortest paths between other actors in the networks. In ERGMs, we expect the outreach-growers to have more connections. 

***Hypothesis 3:** Outreach-growers will have greater betweenness centrality than growers or outreach professionals, and in ERGMs outreach-grower node-attribute estimates will be positive, reflecting their popularity.*

#### Regional Comparisons

The relative prevalence of these different structural motifs may vary across regions, which feature different social and agroecological contexts. For example, our three regions feature considerable geographic differences in their local terroirs, which are administratively recognized as American Viticultural Areas. The concept of terroir refers to a geographically-specific constellation of agroecological variables that confer unique character to the local crops. Terroir is especially important for winegrapes because each terroir develops a reputation for a unique flavor and quality of wine, which is reflected in consumer behavior and market price. As a result, winegrape growers have incentives to sub-divide larger AVAs in to smaller regions in order to segment the market [@warner_quality_2007]. 

The consequences of these regional differences for our networks depends both on physical geography and historical institutional processes. In terms of physical geography, Lodi is a relatively flat and clearly demarcated region in the Central Valley and has only one AVA. Napa features considerably more topographic variation, and is subdivided into many small AVAs reflecting the region's long history of winegrape growing and high value wines. The Central Coast spans a much larger area ranging from Santa Barbara to San Francisco, with disconnected groups of AVAs throughout. 

The institutional structure of producer groups and sustainability partnerships also varies across regions. Lodi has by far the most institutionalized producer group, the Lodi Winegrape Commission, which is formally a local special district that spans the entire AVA and even has the authority to tax growers. The Lodi Winegrape Commission developed its own sustainability partnership and third-party certification program called Lodi Rules. On the other hand, both Napa and Central Coast tend to have producer groups associated with specific sub-AVAs rather than a single consolidated organization. The sustainability partnerships in those regions are sponsored by separate organizations who seek to recruit grower participation via cooperation with producer groups. 

We argue that the compact geography of Lodi along with its strong institutional arrangements will produce networks that are both more centralized and clustered. The networks in Lodi are thus more effective at spreading information and encouraging cooperation. The Central Coast networks will be the most decentralized and least clustered, with strong homophily at the hyper-local level that does not span across the entire region. The network structures in Napa will fall in between Lodi and Central Coast.

**Hypothesis 4:** The Lodi network will have the shortest HMPLs, most negative GWD estimates, and most positive GWESP estimates. The Central Coast network will have the longest HMPLs, least negative GWD estimates, and least positive GWESP estimates. Napa will be intermediate. 

## Methods

#### Study system, data, and software

Winegrowers and viticulture-outreach professionals in three wine growing regions were extensively surveyed as part of a broader project; complete survey details are available in @hoffman_linking_2014. Briefly, surveys were administered in 2011 for Lodi and 2012 for Napa and Central Coast. Growers were identified from county Agriculture Commissioners' Pesticide Use Reports, and additional eligible growers and outreach professionals were identified through snowball methods. Surveys were issued by mail and non-respondents were asked several times to respond. Across all three regions, the overall response rate was 39.4%. 
<!-- Response rates taken from MH and VH's disposition reports, rate number 4 -->

Networks were constructed from survey questions that asked respondents to list up to eight growers and up to eight other individuals with whom they communicate about viticulture management in decreasing order of frequency of communication in Napa and Central Coast and up to four of each in Lodi. To enable comparisons across regions, only the first four individuals listed in each category for Napa and Central Coast were used. Edges are treated as undirected and dichotomous. Isolates were removed from the dataset. Each node in the networks was assigned an attribute type based on whether they are exclusively a grower, exclusively an outreach professional, or both a grower and outreach professional, based on county records and survey question responses. Network data were manually cleaned to merge duplicate entries, correct misspellings, etc. Network summary statistics and degree distribution plots are presented in Online Resource 1.

All analyses were performed in R version 3.3.3 [@r_core_team_r:_2017] using the statnet suite of packages, version 2016.4 [@handcock_statnet:_2016; @handcock_statnet:_2008]. All code and data are archived at https://github.com/michaellevy/ViticultureNetworks-REC.

#### Random Graph Comparisons

For each region, we simulated 1000 random graphs with uniform edge probability and the same size and density as the observed network, constrained to have no isolates, because isolates were removed from the empirical networks. For each region, we compare the empirical value of three graph-level indices of interest to the distribution from the random graphs: normalized degree centralization, harmonic-mean path length (HMPL), and clustering coefficient. If the empirical value is in a tail of the distribution generated by the random graphs, we can infer that some social process has caused the structure of the network to deviate from uniform randomness.

#### Exponential random graph models

In an ERGM the network is the outcome variable and the local processes that are hypothesized to generate it, measured as network-level statistics, are the predictor variables. The random graph comparisons described above test one network structure at a time, but it is possible that a single deviation from independence of edge probability drives multiple network-level statistics into the tail of distributions expected under edge independence. For example, a popularity effect will lead to an abundance of closed triangles, even in the absence of a specific triadic closure force [@levy_gwdegree:_2016]. ERGMs guard against this by estimating parameters on a set of network statistics that jointly maximize the likelihood of generating networks with the observed values of the statistics. Technical details are provided in Online Resource 1.

For each of the three regions, we estimated an ERGM with terms for the geometrically-weighted degree distribution (GWD) and geometrically-weighted edgewise shared partner distribution (GWESP). For technical details on these statistics and their parameter estimates, see Online Resource 1. In brief, a positive GWD estimate indicates an tendency away from centralization of the network (sometimes called anti-preferential attachment), and a positive GWESP estimate indicates a tendency for triadic closure. We use fixed decay-parameter values of $\theta_S = 3.0$ and $\theta_T = 0.7$

The models also included main-effect terms for nodal attributes: whether the individual was a grower (baseline category, "Grower"), an outreach professional ("Outreach"), or both ("Outreach-Grower"), and, as a control, whether or not the individual was a survey respondent ("Respondent"). The tendency for actors to link to others who are spatially close was accounted for by including a homophily term for whether the two individuals in a dyad are in the same zip-code. Because we lack information about the location of some individuals, we include two terms: one where we know the two individuals are in the same zip-code, and one for which we don't have a zip-code for one or both individuals; both are compared to the base-case in which the two are known to be in different zip-codes. Rather than include a density term in our models, we constrained the number of edges in the candidate graphs to be the same as the empirical networks. This helped circumvent the degeneracy issues that plague ERGMs [@handcock_assessing_2003]. 

Parameter estimates were obtained via Markov chain Monte Carlo (MCMC) maximum likelihood estimation [@handcock_statnet:_2016; @hunter_ergm:_2008]. Details of estimation, MCMC traces, and goodness-of-fit diagnostics are presented in Online Resource 1. In summary, MCMC chains were stationary and well-mixed, and graphs simulated from the models were similar to the empirical networks across a variety of criteria.


#### Modeled edge probabilities

To better interpret the ERGM parameter estimates, we calculated probabilities of edges conditional on the ERGM estimates. Technical details of this calculation are given in Online Resource 1. We calculated the probability of every possible edge in each of the networks and then parsed the probabilities by nodal and dyadic attributes of interest.

## Results



Sociograms of the three winegrower networks are presented in Figure 1.1. The Lodi network is the smallest (447 nodes) and most dense (0.0068, fraction of possible ties present), connected (0.84, fraction of dyads with a path between them), and centralized (0.081, normalized sum of deviation of degrees from the most popular actor) of the three, and Central Coast is largest (785 nodes) and least dense (0.0031), connected (0.73), and centralized (0.019), with Napa intermediate on all measures. These differences are all consistent with our regional differences hypothesis, which we subject to more rigorous tests below. Additional descriptive statistics along with degree distribution plots are presented in Online Resource 1.

<!-- **Figure 1.1 about here.**  -->

Outreach professionals and Growers both have relatively low betweenness centrality, but Outreach-Growers have high betweenness centrality in all three networks (Figure 1.2, horizontal axis). This is consistent with Hypothesis 3. The vertical axis of Figure 1.2 presents the coefficient of variation ($\sigma / \mu$) in betweenness centrality. While Growers have consistently low betweenness and Outreach-Growers have consistently high betweenness, Outreach professionals have more variability in their betweenness centrality: on average they have low betweenness, but there are one or more in each region with very high betweenness, generating large coefficients of variation. 

![Viticulture knowledge networks. Sociograms of viticulture management communication in three California winegrowing regions. Nodes represent individuals and are colored by professional role and sized to popularity (node area is proportional to square-root of degree). Graph layouts were generated by the Fruchterman-Reingold algorithm.](figure/network plots-1.png)

<!-- **Figure 1.2 about here.** -->


![Betweenness centrality by profession and region. For three professional roles in three winegrowing regions, the coefficient of variation ($\sigma / \mu$) in betweenness centrality versus the average betweenness centrality.](figure/betweenness plot-1.png)


### Random Graph Comparisons



As initial tests of tendencies for triadic closure and popularity effects, we conducted conditional uniform random graph tests that compare the empirically observed clustering coefficients, degree centralizations, and average path lengths to the distribution of the same statistics in 1000 simulated uniform-edge-probability random graphs of the same size and density as the observed networks. The basic intuition of these tests is to generate random graphs that correspond to an assumption of structure unaffected by social processes. If structural configurations representing the hypothesized social processes are present in the empirical networks at a significantly different frequency than in the random graphs, that is an indication of social processes structuring the empirical networks.

Network centralization is greatest in Lodi and least in Central Coast, and in all three regions, the observed level of centralization was greater than in any simulated graph (Figure 1.3a). The empirical networks feature a few highly popular actors, more popular than any nodes in the random graphs. In terms of distances between dyads, Central Coast has the longest average path length, and the observed HMPL in Central Coast falls squarely in the middle of the distribution of random graphs ($p(observed > simulated) = 0.45$; Figure 1.3b). In Napa and Lodi, where the observed path lengths are shorter, all of the simulated graphs had greater HMPLs than the empirical network. These results are consistent with Hypothesis 1, demonstrating the presence of open structures that enable diffusion of information. The results are also consistent with Hypothesis 4: Lodi is the most centralized with the lowest HMPL, while the Central Coast is the least centralized with an HMPL no different from the expectation in a random graph.

The conditional uniform random graph tests demonstrate that the observed networks have far more clustering than expected by chance: no simulated graph in any region has a greater clustering coefficient than the respective observed value (Figure 1.3c). These results are consistent with Hypothesis 2. In accordance with Hypothesis 4, Lodi has the greatest clustering coefficient, followed by Napa and Central Coast. 

<!-- **Figure 1.3 about here.** -->

![Simulated random networks (boxplots) versus observed networks (red $\times$'s) for three graph-level statistics: degree centralization (a), harmonic-mean path length (b), and clustering coefficient (c).](figure/plot CUG tests-1.png)


### Exponential Random Graph Models






The ERGMs test for each social process while controlling for the other social processes, geography, and aspects of the data collection process. Table 1.1 presents ERGM parameter estimates which, like logistic regression, reflect the increase in the log-odds of a tie for a unit change in the associated statistic. 

Consistent with Hypothesis 1, in all three regions GWD estimates were significantly negative, indicating a tendency for actors to form ties with popular actors. At the aggregate level, this creates centralized networks with short paths between nodes. The way GWD is formulated makes this effect stronger among lower-degree nodes, but the relatively large $\theta_s$ value of 3 gives the statistic significant action over the full range of observed degrees [@levy_gwdegree:_2016]. For example, in Central Coast, Napa, and Lodi respectively, the odds of an edge are 8, 9, and 12% greater on a degree-2 node than a degree-1 node, and 5, 6, and 7% greater on a degree-12 node than a degree-11 node. Consistent with Hypothesis 4, this effect is strongest in Lodi and weakest in Central Coast.

Consistent with Hypothesis 2, the positive coefficient estimates on GWESP indicate a strong force for triadic closure in all three regions. Specifically, relative to having no shared partners, the odds of a tie between two people with a single shared partner are 41, 41, and 49% greater in Central Coast, Napa, and Lodi, respectively. Additional shared partners make ties even more likely, but the geometric weighting of GWESP implies a diminishing effect for each subsequent partner.

Reflecting the boundary-spanning role posited in Hypothesis 3, in all three regions, Outreach-Growers have greater tie propensity than Growers or Outreach professional. *Ceteris Paribus*, in Napa, Outreach professionals are substantially less popular than Growers, while in Lodi, Outreach professionals are somewhat more popular than Growers. Finally, there is strong regional homophily at the zip-code level in all regions, and this effect is strongest in Central Coast, which is consistent with Hypothesis 4. Goodness-of-fit and other model assessments are presented in Online Resource 1. 

\begin{table}[!htbp] \centering    \caption{Parameter estimates for ERGMs of viticulture knowledge networks. Outreach, Outreach-Grower and Respondent are main-effect terms. Geographic terms are homophily effects at the zip-code level.}    \label{}  \begin{tabular}{@{\extracolsep{5pt}}lccc}  \\[-1.8ex]\hline  \hline \\[-1.8ex]  \\[-1.8ex] & \multicolumn{3}{c}{} \\   & Central Coast & Napa & Lodi \\  \hline \\[-1.8ex]  \\ \textbf{Structural Terms}\\  Anti-centralization (GWDegree, $\theta_s = 3.0$) & $-$1.70$^{***}$ & $-$2.00$^{***}$ & $-$2.52$^{***}$ \\    & (0.23) & (0.24) & (0.19) \\    & & & \\   Triangles (GWESP, $\theta_t = 0.7$) & 0.34$^{***}$ & 0.35$^{***}$ & 0.40$^{***}$ \\    & (0.07) & (0.07) & (0.06) \\    & & & \\  \\ \textbf{Professional Role} (vs. Grower)\\  Outreach & 0.19 & $-$0.84$^{***}$ & 0.22$^{**}$ \\    & (0.15) & (0.20) & (0.07) \\    & & & \\   Outreach-Grower & 0.31$^{***}$ & 0.37$^{***}$ & 0.23$^{***}$ \\    & (0.05) & (0.06) & (0.05) \\    & & & \\  \\ \textbf{Geography} (vs. Known-different zip-codes)\\  Shared zip-code & 1.49$^{***}$ & 0.74$^{***}$ & 0.89$^{***}$ \\    & (0.10) & (0.10) & (0.09) \\    & & & \\   Possibly shared zip-code & $-$0.14 & 0.59$^{***}$ & $-$0.14 \\    & (0.15) & (0.15) & (0.13) \\    & & & \\  \\ \textbf{Control} \\  Survey respondent & 1.26$^{***}$ & 1.29$^{***}$ & 0.52$^{***}$ \\    & (0.09) & (0.11) & (0.08) \\    & & & \\  \hline \\[-1.8ex]  \hline  \hline \\[-1.8ex]  \multicolumn{4}{r}{$^{*}$p$<$0.05; $^{**}$p$<$0.01; $^{***}$p$<$0.001} \\  \end{tabular}  \end{table} 

<!-- This paragraph feels discussion-y to me, and I'm not sure about the small world balance statement, or the regional differences in GWD and GWESP (overlapping distributions). So, moved these comments into the respective paragraphs above. -->

<!-- The ERGM coefficients reveal regional differences as expected by Hypothesis 4. The GWDegree coefficient is most negative in Lodi, reflecting a highly centralized network. Lodi also has the most positive GWESP coefficient, reflecting a strong tendency for clustering. Similar to a small-world network, the Lodi network shows the strongest balancing of open and closed structures. In contrast the Central Coast network is the least centralized and clustered, with Napa in between. The importane of physical geography is highlighted by the very high level of zip-code homophily in the Central Coast, where networks are locally focused and few ties span the entire physical distance. -->

<!-- **Table 1.1 about here.** -->

### Modeled Edge Probabilities

To provide intuition on the implications of the ERGM estimates, we calculate the model-implied probability of every possible edge in each of the networks and then parse the probabilities by nodal and dyadic attributes of interest (per Equation 4). The raw parameter estimates and relative odds presented above speak to the effect of a single feature of the networks independent of all others; in contrast, these edge probabilities simultaneously account for all network statistics associated with a particular edge. For example, if two actors live in the same zip-code and have shared partners, the effects of both are reflected in the probability of an edge between them, and correlations between shared zip-codes and shared partners will appear in these probability distributions, whereas the ERGM coefficients for shared zip-code and shared partners tease apart those two effects. 

Figure 1.4a shows the probabilities of all possible edges versus the degree of an edge's nodes. For example, the left-most box-and-whiskers presents the distribution of probabilities of all possible edges to all degree-1 nodes, the next box-and-whiskers shows the probabilities of possible edges on all degree-2 nodes, etc. In general, there is a positive popularity effect, with edge probabilities increasing with node degree, albeit with decreasing marginal effect. Figure 1.4b shows the dramatic positive effect of shared partners on tie probability. Across the three networks, actors who share three contacts are an order of magnitude more likely to be connected than actors with no common contacts. Figure 1.4c shows that ties involving Growers are more likely than ties involving Outreach professionals, and ties involving Outreach-Growers are substantially more likely still. 

<!-- **Figure 1.4 about here.** -->




![Edge probabilities implied by exponential random graph models. For each region, the probability of a tie for each dyad in the network was calculated according to Equation 4. Edge probabilities were then parsed three ways: degree of the actors (a), number of partners shared by the actors (b), and professional role of the actors (c).](figure/plot edge probabilities-1.png)



## Discussion

We analyzed vineyard management networks for structural patterns that support three key social processes for sustainable agroecological systems: diffusion of innovation, cooperation, and boundary-spanning. We find multiple pieces of evidence for all three patterns. Diffusion of innovation is supported by networks with short path lengths and high levels of centralization, which are evidenced by high degree centralization and negative GWD estimates in ERGMs (Table 1.1) that reflect the tendency for links to go popular actors. At the same time, we find closed network structures that support cooperation, where individuals are forming closed triangles at levels exceeding chance, leading to networks with high levels of clustering (Figure 1.3c) and positive GWESP estimates in ERGMs. Finally, in each region there are a few (non-grower) outreach professionals in highly central positions, but many more with only a few connections (Figure 1.2). In contrast, outreach professionals who are themselves growers are highly popular and fill structural holes in all three networks. These individuals span boundaries of the networks across groups that would otherwise be poorly connected. 

The results also suggest some important differences across regions that reflect the physical geography and institutional arrangements of agroecological systems. These geographic differences reflect the way in which winegrape regions are locally organized around American Viticultural Areas (AVAs), which provide administrative recognition to the terroirs that simultaneously confer unique attributes to local grapes while also fostering a regional identity and sense of community among growers. 

Specifically, Lodi has the most homogeneous topography with fewer administrative subdivisions along with a strongly institutionalized grower association and sustainability partnership. As a result, the network is highly centralized, with 5.9 times greater degree centralization (Figure 1.3a) and significantly shorter paths between individuals (Figure 1.3b) than expected by chance.

In contrast, the Central Coast network has relatively long paths between actors compared to Lodi and Napa, which reflects the fact that the Central Coast is a large geographic region encompassing 11 counties and multiple disconnected AVAs. As as result, 27% of dyads in the Central Coast network have no path between them (the mean among corresponding simulated networks is 11%). At the same time, there is stronger spatial homophily (links between actors in the same zip-code) in Central Coast than the other regions (Table 1.1). In addition, for dyads that are not extremely far from each other in network space (less than ~12 edges on the shortest path), empirical paths are substantially shorter than paths in the simulated networks. Thus, information is likely to rapidly diffuse locally in all three regions; it is only across vast network distances that diffusion may be slower in Central Coast. 

From a theoretical perspective, the key advancement of this paper is to highlight how social networks support multiple social processes at the same time, not just one of the more traditional models such as diffusion of innovation or cooperation. The ERGMs demonstrate the co-existence of structures that support more than one process, and it is important to note that our models take an epistemological stance of explicitly linking model parameters to hypotheses rather than including parameters just for the purpose of model fit. 

From a substantive and policy perspective, our results reinforce the importance of policies and programs that catalyze the multiple functions of agricultural networks. Consider for instance agricultural outreach professionals, who have traditionally been key actors for translating agricultural science into grower behavior. To be effective, agricultural outreach professionals cannot simply broadcast knowledge; they should strategically assemble or "weave" networks [@lubell_extension_2014; @vance-borland_conservation_2011]. Agricultural outreach professionals can develop programs that explicitly intervene in networks, by targeting communication at central leaders or brokers, identifying network subgroups with different communication needs or potential for linkages, or creating new network links for open or closed structures depending on whether the goal is spreading information or fostering cooperation [@valente_network_2012]. Governing institutions like land grant universities or other types of agricultural extension systems should reward outreach professionals for engaging in these types of network-smart strategies [@hoffman_network-smart_2015]. 

Clark et al (p. 4572) echo this point in their discussion of innovation systems, where "reformers have called for and implemented more collaborative, iterative, and interactive models of innovation that acknowledge the importance of co-production relationships between knowledge-making and decision-making. The systemic perspective emphasizes that for success in crafting usable knowledge, researchers must understand the need to work together not only with ultimate users and decision makers, but also with a host of other actors involved in performing the multiple tasks of a well-functioning innovation system: funders, entrepreneurs, field evaluators, etc." [@clark_crafting_2016]. Our results provide direct empirical evidence in support of these conceptual frameworks and policy recommendations. 

Agroecological systems are a subset of social-ecological systems, which in turn are a subset of complex adaptive systems. The sustainability and resilience of complex adaptive systems depends on having properties that enable them to learn in the face of uncertainty, self-organize, and link together multiple specialized components of the system. Social networks that encompass these multiple types of processes thus constitute a multiplex conceptualization of social capital. By empirically demonstrating the existence of these different types of network structures, we hope our study will inspire comparative research across different types of social-ecological systems. Such comparative research will be more valuable if it measures dynamic changes over time, especially how structural properties vary and link to social, environmental, and economic outcomes. 














\newpage

\setstretch{1}

# The Structure of Mental Models of Sustainable Agriculture

\setstretch{2}

Michael Levy, Mark Lubell, Neil McRoberts

## Introduction












This paper elicits and analyzes the mental models of sustainable agriculture of 148 agricultural outreach and extension professionals in California. A mental model is the representation in the mind of a system in the world [@forrester_counterintuitive_1971], which explicitly recognizes causal relationships between system components [@axelrod_structure_1976]. Mental models can be portrayed as "cognitive maps", which are networks where nodes are different concepts and a directed link between two concepts is a perceived causal relationship [@gray_fuzzy_2014]. We draw on network theory to identify motifs within cognitive maps that represent different notions of causality in complex systems. We then compare individuals to identify the extent to which their cognitive maps embody "systems thinking", whether the extent of systems thinking varies according to individual attributes related to expertise, and how the micro-level motifs are associated with different macro-level attributes of cognitive maps relevant to decision-making.

Our research is motivated by two important aspects of the discourse and science about sustainability. First, sustainability concepts are usually applied to complex systems with interdependencies across multiple scales [@cash_scale_2006]. For example, sustainable agriculture involves social and biophysical aspects of the food system, cooperation and conflict among stakeholder groups, consideration of multiple normative goals, and the management of knowledge networks [@cash_knowledge_2003; @lubell_extension_2014]. As a result, individual's definitions of sustainability vary and are often vague, which precipitates considerable debate among academics and policy-makers. Sustainability is often criticized as an elastic concept that depends on the eye of the beholder, which makes it difficult to resolve conflict and measure progress. Our research takes a different tack by arguing that in order to resolve these debates, we must first understand how people think about sustainability.

Second, the recognition of such complexity and interdependence has led to widespread calls for systems thinking to improve decision-making in sustainable agriculture [@shiyomi_utilization_2001], environmental issues [@metzcontribution; @rothman_growing_1997; @hawken_natural_1999; @bosch_getting_2007] and the management of complex systems generally [@meadows_thinking_2008; @schvaneveldt_measuring_1985]. Meinke *et al.* articulate what it means to think in systems:
 
> Systems thinking places as much importance on understanding dynamic interactions between parts as it does on understanding the functions of the parts themselves. The system(s) of interest (and its/their outputs) need(s) to be viewed and evaluated holistically, including the key linkages and interactions between system components.[@meinke_adaptation_2009]

Our approach theorizes about the cognitive basis of systems thinking and empirically analyzes how it varies across individuals. A central theme is that it is harder for people to think about more complicated forms of causality, and the extent to which they do has important implications for individual and collective decision-making about sustainability.

In addition to its importance for environmental, economic, and social issues, sustainable agriculture is an excellent research topic because it is an interdisciplinary concept that applies to inherently complex systems. California is the most agriculturally productive state in the United States [@usda_ers_farm_2017], and it has a long history as a leader in sustainable agriculture knowledge and practices  [@lubell_extension_2014; @ohmart_view_2011]. We study agricultural outreach and extension professionals in California who were identified as thought leaders in sustainable agriculture. Studying these types of individuals is important because of their experience and responsibilities for extending knowledge about sustainable agriculture.

### Systems thinking: Simple and complex causality

A number of different research fields have examined systems-thinking, including social and cognitive psychology [@rouse_looking_1986; @white_anthropomorphic_1992; @mathieu_influence_2000], education [@allison_cognitive_1996; @grotzer_taxonomy_2000; @slotta_helping_2006], organizational behavior [@eden_nature_1992; @bueno_benchmarking_2009], political science [@axelrod_structure_1976; @richards_coordination_2001; @lakoff_whose_2006], and engineering [@dickerson_virtual_1994; @stylios_fuzzy_1999; @jetter_fuzzy_2014]. A broad hypothesis across these fields is that it is cognitively difficult to include more complex forms of causality in mental models [@meadows_thinking_2008]. This hypothesis encompasses how people conceptualize the number of components in the systems and the causal relationships among them. 

Typically the first analysis of a mental model asks how many components are considered and are they causes or effects in the system? Construal level theory [@trope_construal-level_2010] suggests that effects (i.e. goals) are more psychologically distant and more abstractly construed, than their causes (i.e. means), which are represented more concretely. The implication for systems thinking is that there will be fewer goals or effects because they are more generalized, with many specific causes influencing the goals. For example, in California winegrowers' mental models, goals are more abstract, rare, and generalized, while strategies to reach the goals are more specific, numerous, and idiosyncratic [@hoffman_linking_2014]. 

Once the components of the system are identified, the next question is whether the structural relationships among them indicate simple versus complex causal thinking. For example, a simple causal relationship might be that technology adoption increases farm yields, while a more complex relationship might be that while technology adoption directly increases yields, it also generates externalities which can degrade water quality, which may lead to regulations that reduce farm profitability. Research suggests the ability to comprehend complex causal effects develops with age [@grotzer_childrens_1993], and training students in causal thinking may improve their ability to articulate complex causal ideas [@bell-basca_using_2000; @grotzer_taxonomy_2000]. People commonly underestimate the propagation of indirect effects, such as the extent to which perturbations to a food web dampen as they propagate through a system  [@white_naive_1997]. Jaques' stratified systems theory argues that only after prolonged experience with a system do individuals gain perception of complex causality [@jaques_development_1986]. In engineering, the call for additional training in systems thinking reflects the difficulty in going beyond simple causal models [@langan-fox_analyzing_2001; @leveson_engineering_2011; @davis_advancing_2014]. Taken together, the broad range of research on systems thinking suggests mental models are typically characterized by hierarchical structure with few goals and multiple causes, connected mostly by simple rather than complex causal ideas. 

### Cognitive maps: A network approach to systems thinking

Mental models can be represented as cognitive maps [@axelrod_structure_1976] that depict a system as a network in which nodes represent concepts and edges represent directed causal effects. The concepts can include any ideas that an individual (or group) considers components of the system; they might may be physical quantities such as groundwater levels, social concepts such as crop subsidies, or normative goals such as social justice. 

The network instantiation of cognitive maps allows us to conceptualize the fundamental building blocks of networks---network motifs---as representing different types of causality. A network motif is a small number of nodes, typically two or three, with a particular minimal set of connections. They are useful because they are sufficiently simple to be substantively interpretable at the micro-level, and comparing their count in a network to an expectation provides insight about the extent to which an observed cognitive map contains motifs representing different micro-level processes[@faust_comparing_2002; @lusher_exponential_2012]. Table 2.1 enumerates six motifs that we argue are relevant for sustainability, their associated causal patterns, their name from the network analysis literature, a related macroscopic network metric that has previously been used in cognitive map analyses, our hypothesized prevalence of the motif in our sustainable agriculture cognitive maps, and a summary of our findings of the prevalence of the motif. For example, in stars reflect two causes exerting influences on a common effect, out stars reflect one cause exerting influence on two effects, and cyclic triples reflect three concepts each both influencing and being influenced by one other, i.e. a feedback loop.

### Hypotheses

We test three hypotheses based on this framework. *Hypothesis 1* focuses on the micro-level of cognitive maps and the relative difficulty of simple versus complex causal thinking. Construal level theory suggests that individuals will be able to articulate fewer effects and more causes [@trope_construal-level_2010], which leads us to expect that multiple causes will be prevalent and multiple effects will be rare. Past research has suggested that indirect and cyclic effects are difficult to identify [@grotzer_childrens_1993; @grotzer_taxonomy_2000; @bell-basca_using_2000; @white_naive_1997], which leads us to expect that indirect effects and feedback loops will be rare in cognitive maps. Because a mediated effect (transitive triple) contains an indirect effect, a multiple cause, and a multiple effect---one of which we expect to be common and the others rare---we have no *a priori* hypothesis about the prevalence of moderated effects.

We analyze the prevalence of each motif using conditional uniform random graph (CUG) tests, which test whether the frequency of motifs observed in a network are significantly different than what would be expected from a random graph in which all possible edges are equally probable [@anderson_interaction_1999; @butts_social_2008]. This approach allows us to compare the frequency of observed motifs across individuals, controlling for number of concepts and connections in the map.<!-- *mike might need an intuitive example here if not in results section* --> Based on the results of the CUG tests, we use cluster analysis to identify three styles of thinking about sustainable agriculture ranging from simple to more complex causality.  

*Hypothesis 2* tests whether years of experience in agriculture and level of formal education achieved are positively associated with richer forms of systems thinking. Our study focuses on agricultural and outreach professionals in California, who are involved in sustainable agriculture programs. Social and cognitive psychology research suggests that education facilitates the identification of more complex causal structures; likewise for professionals as they gain experience with a system [@grotzer_taxonomy_2000; @jaques_development_1986]. We therefore expect individuals with more experience and more education to have cognitive maps that include more of the complex causal structures than individuals with less experience and education. We test these predictions with ordinal logistic regression models that use attributes of education and experience to predict whether an individual's cognitive map falls into a category of less or more complex causal thinking.

*Hypothesis 3* examines the correlation between the micro-level motifs in cognitive maps and the macro-level network statistics that characterize the overall structure of the map and are considered important for systems thinking. First, we analyze a suite of network statistics that reflect various aspects of systems thinking proposed by Eden [@eden_analysis_1992] and subsequently used to analyze cognitive maps of social-ecological systems [@ozesmi_ecological_2004; @gray_fuzzy_2014]. According to this literature, nodes in cognitive maps are divided into three classes: transmitters, which have no incoming edges; receivers, which have no outgoing edges; and ordinary variables, which have incoming and outgoing edges. Cognitive maps with a higher ratio of receiver to transmitter variables (R/T), which encompass multiple goals, are characterized as more complex. Complexity is also measured with a hierarchy index conceptualized by MacDonald [@macdonald_trees_1983] that captures how concentrated causal origins are and has been used to place thinking on a spectrum from fully top-down to fully democratic. We hypothesize that the ratio of receiver to transmitter variables (R/T) will be positively correlated, and map hierarchy will be negatively correlated, with bidirectionality, multiple effects, indirect effects, and feedback loops.


Table: Six motifs that form the building blocks of networks and fundamental patterns of causality.

Motif                                                                                                                                              Causality          \vtop{\hbox{\strut Network}\hbox{\strut Structure}}   \vtop{\hbox{\strut Cognitive}\hbox{\strut Map Metric}}    Hypothesis   \vtop{\hbox{\strut Empirical}\hbox{\strut Prevalence}} 
-------------------------------------------------------------------------------------------------------------------------------------------------  -----------------  ----------------------------------------------------  --------------------------------------------------------  -----------  -------------------------------------------------------
\raisebox{-.5\totalheight}{\includegraphics[width=0.2\textwidth, height=15mm]{/Users/malevy/Dropbox/FCM/papers/structure/motifs/recip.png}}        Bidirectionality   \vtop{\hbox{\strut Reciprocal}\hbox{\strut Pair}}     Hierarchy ($-$)                                           Rare         Rare                                                   
\raisebox{-.5\totalheight}{\includegraphics[width=0.2\textwidth, height=15mm]{/Users/malevy/Dropbox/FCM/papers/structure/motifs/inStar.png}}       Multiple causes    In Star                                               \vtop{\hbox{\strut Transmitter}\hbox{\strut Variables}}   Common       \vtop{\hbox{\strut Very}\hbox{\strut common}}          
\raisebox{-.5\totalheight}{\includegraphics[width=0.2\textwidth, height=15mm]{/Users/malevy/Dropbox/FCM/papers/structure/motifs/outStar.png}}      Multiple effects   Out Star                                              \vtop{\hbox{\strut Receiver}\hbox{\strut Variables}}      Rare         Balanced                                               
\raisebox{-.5\totalheight}{\includegraphics[width=0.2\textwidth, height=15mm]{/Users/malevy/Dropbox/FCM/papers/structure/motifs/paths.png}}        Indirect effect    Two Path                                              \vtop{\hbox{\strut Ordinary}\hbox{\strut Variables}}      Rare         Rare                                                   
\raisebox{-.5\totalheight}{\includegraphics[width=0.2\textwidth, height=15mm]{/Users/malevy/Dropbox/FCM/papers/structure/motifs/transitive.png}}   Moderated effect   \vtop{\hbox{\strut Transitive}\hbox{\strut Triple}}   Hierarchy                                                 ?            Common                                                 
\raisebox{-.5\totalheight}{\includegraphics[width=0.2\textwidth, height=15mm]{/Users/malevy/Dropbox/FCM/papers/structure/motifs/cyclic.png}}       Feedback loop      \vtop{\hbox{\strut Cyclic}\hbox{\strut Triple}}       Hierarchy ($-$)                                           Rare         Very rare                                              

To illustrate how these network statistics have been previously applied, in a case study of participatory management of a lake, municipal personnel had the most complex maps, as indicated by a large R/T, and this fact was used to conclude that they may be useful catalysts for change because they consider many outcomes and implications of the system [@ozesmi_participatory_2003]. Studying stakeholder knowledge in the context of fishery management, scientists' maps included more receiver variables than any other stakeholder group, indicating cognitive complexity and recognition of multiple objectives, while harvesters' maps included the most transmitter variables, suggesting that they see the system as largely exogenously determined [@gray_modeling_2012].

A second suite of global network statistics comes from Krackhardt [@krackhardt_graph_1994], who defined four statistics related to organizational structures: connectedness, efficiency, hierarchy, and least-upper boundedness (LUBedness). Connectedness (weak form) measures the fraction of dyads that have a path between them, regardless of the direction of ties. Efficiency measures how often there are multiple paths between two nodes. Hierarchy measures the fraction of dyads with a connecting path in one direction that do not have a connecting path in the other direction; this is a different measure than MacDonald's [@macdonald_trees_1983] hierarchy. Finally, LUBedness captures the extent to which dyads share an antecedent node, and if they share multiple antecedents, whether those antecedents have a single shared antecedent. In the organizational context, LUBedness reflects unity of command as an "out-tree". In our experience, the archetypal mental model is not an out-tree, but an in-tree, in which there is one ultimate goal for the system and independent causes influencing the central goal. We therefore define greatest-lower boundedness (GLBedness) as the LUBedness of the network with all ties reversed (i.e. the adjacency matrix transposed) to adjust Krackhardt's statistics for comparison to the in-tree archetype.



## Results




Figure 2.1 presents the results of the CUG tests for each of the six structural motifs, for all 148 subjects. A map with a p-value near one has an abundance of that motif relative to chance, and a p-value near zero indicates a dearth of that motif. Each of the six "violins" in Figure 2.1 shows the distribution of the 148 individual maps' p-values for that motif. For example, multiple causes were ubiquitous, being over-represented in 88.5% of the 148 maps. In contrast, feedback loops were the rarest structure relative to chance, being over-represented in only 14.9% of the maps, and being totally absent from 60%. These findings are generally consistent with our first hypothesis for each motif.

![Distributions of the prevalance of causal motifs in cognitive maps relative to uniform random graphs. Within each structure (x-axis), each point represents one individual's mental model, and is placed by the probability (y-axis) that a uniform random graph of the same size and density will have a lesser count of that statistic than the mental model; thus, probabilities near one indicate an abundance of the structure relative to chance levels. The blue curves reflect the density of points around any probability value.](figure/CUG violins-1.png)

Next, we attempt to define characteristic modes of systems thinking by clustering the cognitive maps based on their use of the various causal motifs. We use hierarchical clustering to group maps with similar CUG test results together. The maps form three distinct clusters (Figure 2.2). The first cluster (terminal nodes colored green) includes cognitive maps that make frequent use of the two most common motifs---multiple causes and moderated effects---and few others. The cognitive maps in cluster 2 (orange) differ from the first cluster primarily in their in their incorporation of multiple effects, but also introduce some anti-hierarchical structure---bidirectional effects or feedback loops---and feature less use of multiple causes. Maps in cluster 3 (purple) are more individualized and incorporate combinations of the rarer motifs of indirect effects, bidirectional effects, and feedback loops. The first principle components separating the maps into these clusters and the loadings of each causal motif onto them are presented in Figure B.1.

![Cognitive maps clustered on the prevalence of microstructures relative to random graphs. Hierarchical clustering was performed using Ward's minimum variance method on the Euclidian distances between points on the six dimensions of microstructure prevalance. The colorbars beneath the dendrogram show how over- or under-represented each structure is the cognitive map directly above in the dendrogram.](figure/clust-wardD2-arranged.png)

To test our second hypothesis, that experience and education are associated with richer forms of systems thinking, we consider the three clusters as levels of systems thinking, with increasing complexity from cluster 1 to cluster 3, and ask how well education and experience predict which cluster an individual's map will be in. The posterior probability distribution for an ordinal logistic regression predicting cluster as a function of education and experience is presented in Figure 2.3. Education and experience are both positively associated with systems thinking cluster, and only 3.4% of the posterior probability supports education and experience having no effect or a negative effect on the level of systems thinking. We also conditioned models with each causal motif as the response variable (Figure B.2). Overall, while the effects are noisy, individuals with more education and experience tend to include more complex motifs in their cognitive maps.

![Joint posterior probability distribution for an ordinal logistic regression predicting cognitive map cluster as a function of the individual's education and experience.](figure/cluster predict-1.png)

Figure 2.4 presents correlations relating our CUG test findings to previously used metrics of cognitive maps and network structure. As we hypothesized, R/T was positively correlated with multiple effects and negatively correlated with multiple causes. We did not find strong correlations between R/T and other causal motifs. The hierarchy index employed in the social-ecological systems literature [@ozesmi_ecological_2004; @gray_fuzzy_2014] comes from MacDonald [@macdonald_trees_1983] and is in fact a measure of variance of out-degree. We found this measure to be highly correlated with R/T (Figure B.3), and it did not capture additional dimensions of systems thinking as indicated by relationships with the causal motifs. However, there are other definitions of hierarchy in the network analysis literature, and we think the one defined by Krackhardt [@krackhardt_graph_1994]---the fraction of dyads with a path between them in one direction that do not have a path between them in the opposite direction---is an applicable measure of top-down structure in cognitive maps. Consistent with our third hypothesis, we found this measure to be significantly negatively correlated with every causal motif except the most common one, multiple causes. We present the full correlation matrix in Figure B.3.



![Correlations across cognitive maps of motif-level CUG test results and network-level statistics. Our six causal motifs occupy the rows; columns on the left are metrics from the cognitive map literature, and columns on the right are metrics from the social network literature. LUBedness = least-upper boundedness; GLBedness = greatest-lower boundedness. Pearson correlation coefficients are indicated by ellipse color and eccentricity, and stars indicate asymptotic p-values: *** p < .001, ** p < .01, * p < .05.](figure/corrplot-1.png)


## Discussion

The major contribution of this paper is to develop theory about how different network motifs in cognitive maps relate to simple versus complex systems thinking, and to examine how those motifs vary across individuals and relate to macro-structures. The analysis is motivated by the importance of illuminating the cognitive underpinnings of how people think about sustainable agriculture and complex systems. Here, we offer several conjectures about the implications of our analysis for the debate about the definition of sustainable agriculture, along with individual and collective decision-making around the idea of sustainability. These conjectures can provide the basis for future research questions.  

We found that cognitive maps of sustainable agriculture were rich in multiple causes and moderated effects and poor in bidirectional effects and feedback loops, while multiple and indirect effects were more variable (Figure 2.1). This finding is remarkable because our study participants were deeply involved in sustainable agriculture: The median participant had a master's degree and 20 years of experience in agriculture. Yet even within this highly knowledgeable group, there is a modest positive relationship between education and experience and more complex forms of causal thinking. We suspect that we have not uniformly sampled the full range of systems thinking about sustainable agriculture among agricultural professionals. Eliciting the cognitive maps of individuals less knowledgeable would likely reveal simpler cognitive maps and stronger relationships between education and experience and complexity of systems thinking.  Hence, training in systems thinking [@bell-basca_using_2000] is likely to be important for improving decision-making for sustainability even among people who already subscribe to the idea, and probably even more so for those with less experience or more skepticism regarding sustainability.

At the same time, we found that mental models commonly consider a small number of goals with many causes, and rarely to consider multiple goals with few causes. For collective decision-making where there is broad agreement on the goals, this implies an important role for scientific research in sorting out the evidence for different causal pathways.  On the other hand, where there is broad disagreement about a few goals, collective decisions will be much more conflictual. This is often seen in debates about sustainable agriculture where some stakeholders focus only on economic goals, while others integrate environmental and social goals. When most people in a group consider multiple goals, it may be easier to find some common ground. 

The cluster analysis suggest three broad "styles" of sustainability thinking, that on one end are simple and hierarchical, with few effects and many causes (green cluster). These simple maps are more efficient, with a lack of redundancy in paths among concepts that suggests a pared down view of the system. Mental models characterized by direct, one-directional causation may be advantageous for quick decision making, and where interdependence and feedback is minimal their simplifications may be adaptive. However, in systems where interdependence is significant---such as sustainable agriculture and other complex social-ecological systems---these mental models are likely to fail to perceive consequences of actions, leading to sub-optimal decision making.

The second (orange cluster) and third (purple cluster) styles of system thinking begin to incorporate motifs that represent more complex forms of system thinking. Cluster 2 is differentiated mainly by the introduction of multiple effects, but also sometimes features the anti-hierarchical motifs of bidirectionality and feedback loops. It is only in cluster 3 that indirect effects are extensively represented, but there is also a high diversity of mixing of motifs across individuals. The inclusion of more complex motifs tends to decrease the hierarchy and efficiency of cognitive maps, suggesting that the development of systems thinking proceeds through the perception of multiple pathways of causal effect. Individuals with more complex cognitive maps may be less decisive and take more time to evaluate the consequences of different actions because they must consider more interdependencies among system components. However, they are less likely to overlook effects that ripple throughout the system. 

In a collective decision-making or policy setting, individuals with simple causal maps are likely to quickly come to agreement if the goals and interdependencies in their maps are similar. This may be akin to the formation of advocacy coalitions on the basis of common ideologies [@sabatier_advocacy_1988; @jenkins-smith_evaluating_1994], and the debate over sustainable agriculture is often characterized by sharp cleavages between actors who focus predominantly on economic goals versus those who seek to integrate social and environmental goals [@lubell_extension_2014; @hoffman_linking_2014]. However, if actors with simple but conceptually divergent cognitive maps are placed in the same decision context, conflict is more likely. On the other hand, collective decision-making among people with more complex cognitive maps may take longer to resolve as they debate different aspects of the system, but ultimately may be more likely to find common ground for cooperation. Such predictions could be tested in small group experimental research, by first characterizing each individual's cognitive maps, and then asking them to solve a related collective problem.

Our study advances sustainability science by examining the cognitive underpinnings of systems thinking as applied to sustainable agriculture. Our theoretical framework and empirical results are an important accompaniment to the broad normative debate about sustainability that exists in many areas of science and policy. Our approach will also be relevant to other scientific and policy debates that feature poorly defined, normative concepts applied to complex systems, such as ecosystem health, biosecurity, energy independence, and resilience/adaptive capacity.      

## Methods

### Participant Recruitment and Data Collection

We elicited mental models of sustainable agriculture from 148 experts from eight diverse agricultural regions of California. All activities were approved by the University of California, Davis Institutional Review Board. The experts were identified in collaboration with local cooperative extension agents as the local opinion leaders in sustainable agriculture and the individuals to whom producers look for information. They consisted of representatives from Cooperative Extension, farm bureaus, resource conservation districts, agricultural commissioners and other regulatory agencies, and environmental advocacy organizations, as well as pest control advisors, crop advisors, and community-engaged producers. We targeted this group because they represent the conduit through which diffusion of sustainable agriculture knowledge and practices occurs. Their understanding of agriculture and sustainability is informed by policy makers and scientists, as well as growers and other local stakeholders.

Maps were elicited in workshops held in eight disparate California counties, selected to capture the diversity of both socioeconomic and bioagronomic diversity in the state: Merced, Plumas/Sierra, Riverside, Sacramento, San Diego, Sonoma, Ventura, and Yolo Counties. Workshops were four hours long and included a brief survey, the elicitation of participants' individual cognitive maps, a group discussion and collective model elicitation process, and a discussion on the use of new media tools in agriculture outreach. The data used here are from the surveys and individual mental models. The survey provided demographic information about the individuals including their education and experience levels, and concluded with a question designed to prime thinking about sustainable agriculture, which enhances map elicitation [@jetter_fuzzy_2014]. Following the survey, participants were given a brief introduction to the research project, cognitive maps, and the particular software they would use to build their models. Instructions were kept to a minimum to avoid biasing participants; instead, they were told to build a model of "the factors involved in sustainable agriculture and how they affect each other". Each person was given a Chromebook laptop computer and used the Mental Modeler platform [@gray_mental_2013] to build their models. The individual modeling continued until all participants had finished adding to their models, which generally took at least 45 minutes. 

### Cognitive Map Analysis

All analyses and visualization were done using R version 3.3.3 [@r_core_team_r:_2017] and the following packages: `statnet` [@handcock_statnet:_2016; @handcock_statnet:_2008], `rethinking` [@mcelreath_rethinking:_2016], `tidyverse` [@wickham_tidyverse:_2017], `netUtils` [@levy_netutils:_2017], `corrplot` [@wei_r_2017] `dendextend` [@galili_dendextend:_2015], and `factoextra` [@kassambara_factoextra:_2017]. Mental Modeler stores maps in XML format; we parsed the XML to represent the networks in R as `statnet` network objects. Causal connections in Mental Modeler can take signs and weights, but for all analyses here edges were only considered present or absent; thus each cognitive map was represented as a digraph. 

For the CUG test analysis we simulated 10,000 networks with the same size and density as each of the cognitive maps and uniform edge probability. For each of the six causal motifs (Table 2.1), the probability the cognitive map had a greater count of the motif than a random graph was taken as the fraction of simulated networks with a lesser count of the motif than the cognitive map [@anderson_interaction_1999; @butts_social_2008]. 

The cognitive maps were hierarchically clustered based on the results of the CUG tests. Each of the six motif's p-values was used as a dimension, and maps were agglomerated into clusters such that each addition minimized the sum of squares Euclidean distances within clusters [@Inchoate:Ward63; @murtagh_wards_2014].

To examine the effect of experience and education on systems thinking, we conditioned a Bayesian ordinal logistic regression model with cluster as the response variable and years of experience in agriculture and highest degree earned as predictors. Education was instantiated as a continuous variable (High school = 1, Bachelor's = 2, Master's = 3, Doctorate = 4), and both predictors were scaled to have unit standard deviation. Priors were minimally informative ($Normal(0, 5)$ for both $\beta$ parameters and the ordinal logit cutpoints). Hamiltonian Monte Carlo via Stan [@stan_development_team_stan:_2015] was used to draw 100,000 samples after a 10,000 sample warmup from the posterior for each of three separate chains. Chains converged and were well mixed, with $\hat{R}$ very near one for all parameters. All 300,000 samples from the joint posterior were used to create Figure 2.3. We also conditioned models with varying intercept terms for the individual's region and/or professional sector (extension, academia, government, industry, agriculture, or ngo), but model comparison with WAIC preferred models without these variables. We also conditioned models with each of the causal motifs' p-values as the response variable, using a beta link function; posterior distributions for these models are presented in Figure B.2. 

MacDonald's hierarchy [@macdonald_trees_1983] was calculated as:

$$\dfrac{12}{(N-1)N(N+1)} \sum\limits_i{(od_i - \overline{od})^2}$$

where $od_i$ is the out-degree (number of outgoing links) of node $i$. Connectedness, efficiency, hierarchy, and LUBedness were calculated as in ref. @krackhardt_graph_1994. GLBedness was calculated as the LUBedness of the transpose of the adjacency matrix; that is, the LUBedness of the map with all edges reversed. Pearson correlation coefficients are presented with markers for their asymptotic p-values. To correlate R/T with other variables, we defined finite values when there were no transmitter variables in the graph: When there were also no receiver variables we deemed $R/T = 1$, and when there were $R>0$ receiver variables and no transmitters, we deemed $R/T = R + 1$. In Figure B.3 variables are ordered by the angular order of the eigenvectors of the correlation matrix.























\newpage

\setstretch{1}

# Semantic and Network Analysis of Mental Models of Sustainable Agriculture

\setstretch{2}

Michael Levy, Mark Lubell, Neil McRoberts

## Introduction


Contentious policy debates often center around vague goals that policies should seek to achieve. "Sustainable agriculture" is a quintessential example. The phrase is nebulous, encompasses a variety biophysical and socioeconomic goals, and includes stakeholder groups with different priorities and conceptualizations about how the system works [@ohmart_view_2011; @santiago-brown_what_2015; @toman_difficulty_2010]. In order to move policy discussions forward, it is important to understand what stakeholders' goals for sustainable agriculture are and how they think the goals can be achieved, and it is also important to understand differences in goals and strategies across stakeholder groups. One way to examine what stakeholders think about a system is by studying their mental models. @north_institutions_1990 emphasized that in order to understand institutional change it is essential to understand individuals' mental representations of systems, and @ostrom_understanding_2005 highlighted the importance of mental models in collective action. Indeed, stakeholders' mental models are one of the key variables in Ostrom's framework for understanding social-ecological systems [@ostrom_general_2009].

Here we analyze experts' mental models of sustainable agriculture to get a better understanding of what they think is important and how their perspectives vary. We use cognitive maps to capture the experts' mental models, which allows us to aggregate the models of multiple experts into an integrated representation of their knowledge. Aggregating all of the experts' models into one yields a single model that reflects their combined understanding and can be used by policy makers to identify priorities for sustainable agriculture and causal pathways to effectively support goals. Aggregating models at the regional level provides a spatially resolved snapshot of goals and the strategies seen as effective to achieving the goals. Finally, the cognitive map formulation provides a detailed view of how important each expert thinks each aspect of the system is. We use network analysis tools to examine what types of aspects of the system are widely seen as relevant to and important for sustainable agriculture. 

A cognitive map is a codified representation of an individual or group's mental model of a system as a network of concepts and the causal relationships between them [@axelrod_structure_1976]. They have proved useful as a way to investigate how stakeholders think about complex social ecological systems such as sustainable agriculture [@vanwindekens_new_2014; @kacprzyk_using_2010; @ozesmi_ecological_2004; @gray_modeling_2012]. Their utility derives in part from their ability to represent complex, multifaceted systems as a set of bilateral relationships: A cognitive map consists of the concepts perceived to be important to the system and, for each pair of concepts, the perceived causal relationship between them. Additionally, the network representation of the system is analytically tractable, enabling qualitative analysis [@vanwindekens_new_2014; @santiago-brown_what_2015], systems dynamics simulations [@taber_knowledge_1991; @papageorgiou_using_2012; @ozesmi_participatory_2003], and network analysis [@eden_analysis_1992; @gray_fuzzy_2014]. Indeed, a cognitive map can been seen as a hybrid qualitative/quantitative structure that incorporates the richness of description of qualitative methods with the analytical leverage of quantitative analysis [@dambacher_qualitative_2003; @kacprzyk_using_2010; @jetter_fuzzy_2014].

We elicited cognitive maps of sustainable agriculture from 148 experts from eight regions in California. California is the leading agricultural producer in the United States [@usda_ers_farm_2017] and has a long history of leading knowledge and practices in sustainable agriculture [@lubell_extension_2014; @ohmart_view_2011]. The regions were selected to represent the diversity of biophysical and socioeconomic conditions in California and ranged from desert regions with low average income in the south to wine country on the periphery of the San Francisco Bay Area in the north. For each region we partnered with a local cooperative extension advisor who helped us identify several dozen local thought leaders in sustainable agriculture, whom we then recruited to workshops where we elicited their cognitive maps. Participants included farm advisors, certified pest control advisors, trade group representatives, environmentalists, regulators, and growers. 

Sustainable agriculture is an attractive domain in which to study how experts think about a system for multiple reasons. It is inherently complex, lying at the intersection of multiple other complex systems such as global climate change and economic markets [@meinke_adaptation_2009; @niles_perceptions_2013]. It touches nearly the entire global population, and both the sustainability *of* agriculture, and sustainability *in the face of* agriculture are critical. It features competing stakeholder groups and narratives and is often politically contentious (e.g. debates around genetically engineered crops and the U.S. Farm Bill). However, the policy debates around sustainable agriculture often suffer from ambiguity in language. "Sustainability" itself has been criticized as a being able to mean so many different things that it loses coherent meaning. We propose that investigating experts' mental models of sustainable agriculture can help bring coherence and precision to these debates. Furthermore, in a system so complex and multifaceted as sustainable agriculture, no individual can realistically develop expertise in all aspects of the system [@lubell_extension_2014]. Therefore a mechanism to integrate the understanding of multiple experts is needed, and cognitive maps provide an opportunity to do that.

### Expectations & Hypotheses

A major motivation for this data collection and analysis effort was to present to the research and policy-making communities a single model that integrates the understanding of a large number of experts on sustainable agriculture. This is an inherently descriptive undertaking about which we do not formulate specific hypotheses, but we do have some more general expectations. First, we expect that the most central concepts in the overall aggregate model will represent broad goals reflecting the three "pillars of sustainability" (environmental, social, and economic), with a greater number and diversity of strategies on the periphery of the map. This expectation stems from the previous finding that agricultural goals tend to be more general and shared while causes tend to be more specific and individualized [@hoffman_linking_2014]. 

Our second expectation is at the regional rather than state level and derives from the observation that mental models are likely to be oriented to the current challenges being faced. When one is searching for concepts to include in a model, the most easily available concepts are likely to be mixed in with the most important concepts, and the challenges one is working on in their day-to-day work are likely to be the most easily available [@tversky_availability:_1973; @kahneman_thinking_2011]. Therefore, we expect that aspects of sustainable agriculture related to current challenges within a region will be more central in that region than in the rest of the state. 

Conceptualizing cognitive maps as networks allows us to use network tools to measure a concept's overall centrality in a map (the total number of connections it has) and to what extent a concept is a driver of the system or an endpoint of the system (the ratio of incoming- to outgoing-ties, roughly, "driverness"). We expect the most central concepts in individuals' maps to be those that are present in the most maps, both because those concepts will be active in the various communication channels involved in agriculture [@lubell_extension_2014] and so will be most readily available, and because we expect a shared recognition of what the important aspects of sustainability are. That is, we expect concepts that are widely seen as relevant to sustainable agriculture to be central in individuals' mental models. **Hypothesis 1**: Average centrality of a concept will be positively associated with the number of maps in which it appears. 

We also expect the most central concepts to be more effects than causes. This relates to our second expectation above and stems from the findings that goals tend to be shared across regions [@hoffman_linking_2014], and that multiple causes of a single effect is an extremely common causal motif in these mental models [@levy_structure_2017]. **Hypothesis 2**: Concepts' average centrality will be negatively related to average driverness.

In addition to the tendency for concepts that are more central *on average* to be more effects than causes *on average*, we expect that when the same concept is used by different people, the more centrally it is used, the more of an effect it will be. This stems from the idea that mental models tend to be hierarchical structures with strategies surrounding and scaffolded by central goals [@trope_construal-level_2010]. Thus, whatever an individual perceives to be a goal for the system, it will tend to be central in that individual's mental model. **Hypothesis 3**: When a concept is used in a more central position, it will tend to be more of an effect, and when it is used in a more peripheral position, it will tend to be more of a driver of the system.

## Methods



Mental models of sustainable agriculture were elicited from 148 local thought leaders in eight agricultural regions of California: Merced, Plumas/Sierra, Riverside, Sacramento, San Diego, Sonoma, Ventura, and Yolo Counties. In each region, we partnered with a local cooperative extension agent to identify and recruit individuals leading the conversation in the region about sustainable agriculture to a four-hour participatory workshop on sustainable agriculture. The number of participants in a workshop ranged from 12 to 46. The Sacramento workshop was part of the University of California Division of Agriculture and Natural Resources Joint Strategic Initiatives Conference; all other workshops were standalone events.

At the workshops, the broader research project on sustainable agriculture knowledge was described and then participants introduced themselves to each other. Cognitive maps were presented as a way to represent the relational structure of knowledge, and the Mental Modeler software [@gray_mental_2013] they would use to build their maps was demonstrated. Before the modeling exercise, participants completed a brief survey about their professional experience. The survey concluded by asking them to write a few sentences defining what sustainable agriculture means to them, in order to active the relevant knowledge domain their minds [@jetter_fuzzy_2014]. Each participant then worked independently on a Chromebook computer using the Mental Modeler platform to encode their mental model of sustainable agriculture as a cognitive map. The workshop facilitator was present throughout to answer questions and troubleshoot. The exercise continued until all participants had finished adding components to their models, usually around 45 minutes. 

A cognitive map represents a system as a set of concepts and the causal links between them. It is a network representation of a mental model in which nodes can be any aspect of the system and edges represent causal influence between two aspects [@axelrod_structure_1976]. Edges are directed, and in general edges can be valued and/or signed, but we only examined the presence or absence of edges between concepts. Subjects labeled concepts in natural language, and labels ranged in length from 1 to 29 words and included acronyms, colloquialisms, and misspellings. In total, the participants nominated 3,061 concepts, 2,415 of them unique. 

### Concept Synonymy

To enable analyses of the content of the maps, we needed to identify cases of synonymy: where different labels were used to refer to the same underlying concept. In the simplest cases, this involves expanding acronyms or correcting misspellings, but individuals regularly used different terms to refer to the same concept; for example, "atmospheric pollution" and "poor air quality". Of course, there is no definitive boundary between labels referring to the same or different concepts. For example, do "greater nutrient cycling" and "use of animal manure and crop residue" refer to the same concept? How about "ag land" and "identify areas best suited for farming which has natural resources and encourage policy makers to protect these"? 

Before asking whether two labels refer to the same concept, we sought to answer the question, how similar are a pair concepts? Measuring semantic similarity allows us to set arbitrary thresholds for two concepts to be deemed the same, and by adjusting the threshold we can consolidate the 2,415 concepts into any smaller number. However, evaluating the similarity of all pairs would involve 2,914,905 comparisons, and even if it were logistically feasible, having an individual do so would embed the assessor's perspective on relationships of aspects of sustainable agriculture. Therefore, we sought a computational solution. 

Algorithms to assess the semantic similarity of documents have received a lot of attention in recent decades [@sebastiani_machine_2002]; however, these require longer documents than even the longest of our concepts. There also exist myriad methods to assess the semantic similarity of words or short n-grams (tokens), including the Google Similarity Distance of @cilibrasi_google_2004, which proposes that tokens which appear together more frequently, and separately less frequently, on webpages indexed by Google's search engine are more closely related. However, tools for assessing the similarity of tokens require that each token appears in some corpus, while many of our participants' longer concept labels are likely unique utterances. These tools also do not work well with tokens of disparate length. We therefore developed a new method to assess semantic similarity that copes well with concepts' widely varying length, misspellings, and colloquialisms.

### Building a Document for Each Concept

Like @cilibrasi_google_2004, we used Google's database of the web to characterize concepts.
For each concept, we construct a bag of words from its search results page, which allows us to use established document comparison methods on a concept's search results page. To ensure the appropriate context, each concept was appended with the word "agriculture" for its search. We excluded portable document files (PDFs) from the results because their text summaries were often unusable. Searches were made programmatically using the `RCurl` package for R [@temple_lang_rcurl:_2016]. Personalization was turned off, and we issued the requests from Davis, California, February 17-18, 2016. We used the first 100 results for each concept. As an example, for the concept "labor availability", the URL query sent to Google was: "http://www.google.com/search?num=100&hl=en&lr=&ie=ISO-8859-1&q=labor+availability+agriculture+-filetype:pdf&btnG=Search&pws=0". 

Results pages for each concept were processed using XPath via the `XML` package for R [@temple_lang_xml:_2016]. Three aspects of each search result were used: Page titles and URLs as the XML values and attributes, respectively, captured via the XPath query `//h3[@class = "r"]/a`, and page summaries as the XML values captured by the query `//span[@class = "_Tgc" or @class = "st"]`. URLs were trimmed to the top-level domain (TLD), which was represented as a single token. Dates were removed from page summaries because summaries often begin with the date of the last update to the page, which we deemed irrelevant. Words present in the original concept were removed from page summaries because the summaries tend to be extremely rich in these words, leading to an overwhelming tendency to cluster concepts that shared words. Uninformative words, defined by the SMART information retrieval system stopword list [@salton_term-weighting_1988], were removed from page titles and summaries. Words in titles and summaries were stemmed to join different parts of speech, plural and singular forms, etc. using the Snowball algorithm [@Porter:1997:ASS:275537.275705] as implemented in the `tm` package for R [@JSSv025i05].

### Concept Consolidation

After processing, each concept's first 100 results' TLDs, page titles, and page summaries were used to generate a bag of words, which were used as documents to construct a document-term matrix (DTM) to cluster the concepts. The dimensions of the DTM were 2,415 rows, one for each unique concept, by 133,779 columns, representing each unique term appearing in the search results. Terms that appeared in fewer than 10% of the rows were removed both to ease computation and to focus the clustering on vocabulary that was shared across concepts. This left 1,748 terms in the DTM, which was then row-normalized. 

We consolidated the concepts into various numbers of clusters using k-means clustering in Euclidean space with one dimension for each term, and each concept extending in each dimension the normalized count of that term. We used the `biganalytics` package [@emerson_biganalytics:_2016] to perform k-means clustering with 5 random cluster-center starting positions and up to 50 iterations for each round of clustering to ensure convergence, keeping the clustering that minimized the sum of squares distances from the points to the cluster centers. Rather than choosing a single number of clusters for our analyses, we retained various numbers of clusters to examine how the level of concept consolidation affects patterns of how individuals and groups think about the system. We examined numbers of cluster as small as 4 and as large as 1,024; here we present results for 10, 20, 40, 80, 160, and 320 clusters. The number of concepts assigned to each cluster are presented in Figure C1.

Each cluster was assigned a label consisting of the words most over-represented in the search results for the concepts in the cluster. This was done by creating a new DTM, with a document for each cluster, formed by combining the bags of words from the processed search results for each concept in the cluster. For this DTM, only the page titles and summaries were used and words in the original concept were not removed from the summaries. This DTM was filtered to terms occurring in at least 5% of the (original) concepts' search results. The DTM was then term frequency–inverse document frequency (tf-idf) weighted [@karen_sparck_jones_statistical_1972], and the terms with the greatest tf-idf values for each cluster were used as its label. Stemmed terms were "unstemmed" to the form most commonly used in the participants' concepts. The complete set of original concepts, their cluster assignments at the various levels of consolidation, and the tf-idf labels assigned to the clusters are available as [supplementary material](https://www.dropbox.com/sh/e3g191a7k2l9nv2/AAAsCohcK2an63hPnzLnZ87Xa?dl=0).

We then consolidated the original concepts into those generated by the clustering procedure. Within each participant's map, concepts were relabeled as the consolidated concepts. If a consolidated concept appeared multiple times in a map, they were merged and their edges summed; self-ties generated in this process were retained. At the end of the consolidation process, each of the 148 participants' maps consisted of a subset of the same concepts, connected by valued edges that indicate the number of directed effects one concept exerts on another. 

### Map Aggregation

With all of the maps consisting of the same nodes, we then aggregated the individuals' maps to the regional and state levels to capture groups' representations of the system. Aggregation proceeded as in the within-map consolidation process: All multiply occurring concepts in maps within a region were merged and their edges summed; the eight regional maps were likewise aggregated to yield a state-wide cognitive map of sustainable agriculture. 

### Map Analysis

To investigate which aspects of sustainable agriculture are perceived as particularly important and unimportant in each region, we compared the centrality of each concept in each regional map to the state map. We calculated the fraction of all ties incident (in either direction) on each concept in each map and took the fraction in the regional map minus the fraction in the state map as a measure of regional emphasis. 

To examine the relationship between concept centrality, whether the concept is more of a cause or effect, and how many people include the concept in their models, we calculated several concept-level variables: 

- Mean centrality: Average total degree---count of incoming and outgoing ties---of a concept in the maps in which it appears. Maps in which a concept does not appear do not contribute a zero to the average.

- Number of maps: The number of maps, out of the 148 individual or eight regional maps, in which the concept appears.

- Driverness: A measure of the balance of outgoing to incoming ties. High driverness indicates a concept that affects many others but is not itself affected strongly by others -- a cause or means to other ends. Low driverness indicates a concept that is influenced by many others -- an effect or goal. Driverness is calculated as the inverse-logit of the base-2 logarithm of the ratio of incoming to outgoing ties. This makes the measure bounded by zero and one and symmetrical around 0.5. The logistic function was used to handle concepts with no incoming or outgoing ties; isolates were assigned a driverness of 0.5.

Additionally, in modeling mean concept centrality, we included the level of concept consolidation as a predictor, as well as its interaction with number of maps, since the number of maps a concept appears in is highly dependent on the level of consolidation. Model comparison with the Bayesian information criterion supported inclusion of an interaction effect for level of consolidation and number of maps but not mean driverness, and not number of maps $\times$ mean driverness. Level of consolidation is instantiated as the logarithm of the inverse of the number of concepts. In this regression all predictors and the response are scaled to have unit standard deviation. The unit of observation is a concept within a level of consolidation, averaged across individuals, yielding 630 observations.

We also regress concept centrality on driverness with each use of the concept as an observation, obtaining a separate regression fit for each concept. Here, there is no averaging across individuals; the unit of analysis is a concept in an individual map. Thus, the number of observations varies by concept and is equal to the number of individuals that included that concept in their map. In these regressions, we examine the distribution of estimates across concepts. These are fixed-effects estimates for each concept within each level of consolidation. Centrality is the base-10 logarithm of the total degree of the concept and neither variable is scaled. Isolates, which represent 46 of the 11,456 observations, are not considered in this analysis. These slope estimates address how a concept's driverness changes when the concept is more used more centrally or peripherally by an individual.

### Software

Cognitive maps were elicited using the online version of Mental Modeler [@gray_mental_2013]. Mental Modeler files are stored as XML, which was parsed into network edgelists in R. All analyses were performed in R version 3.3.3 [@r_core_team_r:_2017]. In addition to the packages cited above, we used the `tidyverse` suite of packages for tabular data manipulation and visualization [@wickham_tidyverse:_2017], and `netUtils` and the `statnet` suite of packages for network data manipulation and visualization [@levy_netutils:_2017; @handcock_statnet:_2016; @handcock_statnet:_2008]. The `stargazer` package was used to present model results tables [@hlavac_stargazer:_2015], and this manuscript was written in RMarkdown and compiled with `knitr` [@allaire_rmarkdown:_2017; @xie_knitr:_2017; @stodden_knitr:_2014].

## Results

Figure 3.1 presents the statewide aggregated map consolidated to 40 concepts. Regional and state maps at various levels of consolidation are presented as [supplemental material](https://www.dropbox.com/sh/s018xrbq8yfivjj/AABI7Zn6cgesdmje59qo0z7Da?dl=0). The concept labeled *viability, goals, equity, sustainable* is by far the most central, and it is much more of an effect than a cause (driverness = 0.14). It includes original concepts that articulate goals in each of the "three Es" of sustainability: environmental, economic, and equity (social); for example, "economic viability" and "wildlife sustainability", and it also incorporates higher-level thinking about goals for sustainable agriculture, such as "consensus on sustainability meaning and goals". In the periphery of the map, there seem to be thematic clusters around community support and knowledge, economics and labor, and inputs and pest management. The most central drivers in the map are *educated, teacher, career, ffa* and *pesticide, regulate, regulatory, license*, reflecting the perception that education and regulations are important forces on the system. Overall, the picture is of broad, central goals with many mechanisms to influence those goals in the periphery, consistent with our first expectation.

![Aggregate model including all concepts and connections from 148 California thought leaders' cognitive maps of sustainable agriculture. Concepts are sized to their overall centrality and edge width is proportional to the number of connections perceived between the concepts. Concept color indicates the balance of outgoing and incoming ties for the concept.](figure/network plot-1.png)

### Regional emphases

The eight regions in which we conducted elicitation workshops represent the diversity of biophysical and socioeconomic conditions found in California agriculture. To investigate differences in what the thought leaders in these regions perceive the most important aspects of sustainable agriculture to be, we compared the centrality of each concept in each region to the statewide map. Figure 3.2 presents the 3 most over- and under-emphasized concepts (with emphasis as the fraction of all ties in the map incident on a concept) in each region relative to the rest of the state, again at the 40-concept consolidation level.

In general, concept emphasis parallels the physical and social conditions of the regions. San Diego has some of the most expensive water in the country and *water, groundwater, pollutant, irrigation* is emphasized there. Sacramento is near the statewide consensus for all concepts, as one might expect and hope for in a state capital. Yolo County is home to a top agricultural university and the University of California's Agriculture and Natural Resources division, and its regional map is less concerned with the broad goals of *viability, goals, equity, sustainable* and more concerned with specific approaches to pest control and soil management. Sonoma---where high-value wine production and proximity to San Francisco make land expensive---highlights labor costs and profitability for beginning and family farmers. Plumas is a mountainous region, and its map emphasizes infrastructure and ranching viability. This is consistent with our second expectation, that local challenges in each region would appear in more central positions in the mental models of people from that region. 

![Most over- and under-emphasized concepts in each regional map relative to statewide map (fraction of ties attached to a concept in the regional map minus the fraction in the state map). Colors indicate concept driverness as in Figure 3.1 but in the respective regional map; white markers indicate concepts that do not appear in that regional map. The under- and over-emphasized tick marks on the horizontal axes represent a difference from the state map of five percentage points.](figure/regional emphasis plot-1.png)

### Central concepts are effects that are widely perceived

People tend to place concepts that many people are thinking about at the center of their maps, while concepts in the periphery of maps are likely to be less-widely perceived as relevant to sustainable agriculture (Figure 3.3; Table 3.1). This supports our first hypothesis and reflects a general consensus about what is important in sustainable agriculture -- if the regression lines in Figure 3.3 were flat or downward sloping, it would indicate that at the center of some people's maps are concepts that others are not thinking about at all.

This effect is stronger at greater levels of consolidation where there are fewer concepts and each encompasses more of the system (Table 3.1, interaction term). As concepts are consolidated, they naturally appear in a greater fraction of maps, and it tends to be the disparate causes that consolidate later in the process. That is, initially the broad goals that are widely shared group together, but the more idiosyncratic causes remain separate---with low centrality and in few maps---leading to the modest slope in the first panels of Figure 3.3A. As those peripheral concepts eventually group together, their average centrality remains low, but the number of maps they appear in increases, leading to the steeper slopes at greater levels of consolidation.

In addition to more widely perceived concepts being in the center of maps, concepts that are perceived to be more effects than causes are also more central. That is, after controlling for the number of individuals that perceive a concept to be involved in sustainable agriculture, concepts that are perceived to be more endpoints for the system rather than drivers of the system appear in the center of maps. It is worth noting that the average driverness of a concept is also weakly correlated with the number of maps in which it appears ($\rho = -0.11$) -- effects tend to be included in more maps than drivers. All of these measures are averaged over individuals' uses of a concept; in the next subsection we turn to how concepts are differentially used across maps.

<!-- Note: Smoother lines should reflect multivariate relationship. fortify and plot -->

![Concepts' average centrality in the maps in which they appear versus (A) the number of maps in which they appear or (B) the mean driverness of the concepts. Points are jittered slightly to mitigate overplotting. Lines represent OLS fits of the bivariate relationship.](figure/number maps plot-1.png)


\begin{table}[!htbp] \centering 
  \caption{OLS estimates for the regression of the mean centrality of a concept over the maps in which it appears versus the number of maps in which it appears, the mean driverness of the concept, and the level of concept consolidation. Mean centrality, number of maps, and level of consolidation are all log-transformed and then scaled to have unit standard deviation.} 
  \label{} 
\begin{tabular}{@{\extracolsep{5pt}}lc} 
\\[-1.8ex]\hline 
\hline \\[-1.8ex] 
\\[-1.8ex] & Mean Centrality \\ 
\hline \\[-1.8ex] 
 Number of maps & 0.355$^{***}$ (0.040) \\ 
  Mean driverness & $-$0.316$^{***}$ (0.032) \\ 
  Level of consolidation & 0.020 (0.048) \\ 
  Number of maps $\times$ Level of consolidation & 0.162$^{***}$ (0.033) \\ 
  Intercept & $-$0.093$^{**}$ (0.037) \\ 
 \hline \\[-1.8ex] 
Observations & 630 \\ 
R$^{2}$ & 0.358 \\ 
\hline 
\hline \\[-1.8ex] 
\textit{Note:}  & \multicolumn{1}{r}{$^{*}$p$<$0.1; $^{**}$p$<$0.05; $^{***}$p$<$0.01} \\ 
\end{tabular} 
\end{table} 

### Cognitive tendency to place effects centrally




The above analyses have examined concepts' central tendencies across maps; here we turn to how the same concepts are used differently across individuals. Figure 3.4 presents OLS slopes for regressions of concept driverness versus centrality. Each line represents a concept and has as its unit of observation all of the maps that included the concept. Thus, a downward sloping line indicate a concept that, when used more centrally is more of an effect, and when used more peripherally is more of a driver. Supporting our third hypothesis, this is the case for the vast majority of concepts: When different people think about the same concept, the more they see it as an endpoint for the system, the more central they perceive it to be, and the more they see it as a driver of the system and the less central it will be.

This pattern holds across levels of concept consolidation. Figure 3.5 presents the distributions of centrality versus driverness slopes. Across levels of consolidation, the median slope is quite consistent, ranging from -0.37 to -0.32, and the fraction of concepts having negative slopes ranges from 81% at 320 concepts to 100% at 10 concepts. Thus, even when concepts are consolidated to very general, overarching themes, where they appear more centrally they are more effect and less cause. 

![Each line reflects one concept's OLS estimate for the slope of the relationship between the concept's (log-10) centrality and its driverness (0 = pure effect; 1 = pure cause) across individuals' maps, at various levels of concept consolidation.](figure/driverness regression lines-1.png)

![Distributions of slope estimates for the OLS regression of a concept's centrality (base-10 logarithm of total degree centrality) versus its driverness ($\in [0, 1]$). Within each level of consolidation, each concept yields one slope estimate, with each map employing the concept forming an observation for the regression. Outlying estimates (outside 1.5 $\times$ the interquartile range beyond the first and third quartiles) are not plotted for visual clarity but are used in determining boxplot positions.](figure/driverness model distributions-1.png)


## Discussion

We have presented a causal model of sustainable agriculture that integrates 148 experts' understanding. The model can be inspected to identify shared goals for sustainable agriculture and the means perceived to be effective to achieve them, and network analysis and systems dynamics tools can be used to interrogate the model more deeply. We compared the maps of eight regions to identify aspects of sustainable agriculture each region perceives to be particularly important. Statistical models revealed that concepts regarded as central to sustainable agriculture tend to be goals that many people see as relevant components of the system.

Figure 3.1 presents a single model that reflects the aggregate perspective of 148 sustainable agriculture thought leaders from a wide range of professions and regions across California. The individuals who contributed to the model were selected to be those who are in contact with and deliver usable knowledge to growers. It can therefore be used by policy makers to identify shared goals for sustainable agriculture across communities in California. We found big, general goals at the center of the map incorporating aspects of all three pillars of sustainability. Thematic clusters of strategies surround those goals, involving irrigation, economics, labor, regulations, community, education, farmland, pest management, inputs, and climate adaptation. Secondary, more specific goals included healthy food affordability; community resilience and well-being; living wages and poverty reduction; profitability for small, beginning, and family farms; feeding a growing population; integrated pest management; and climate change mitigation. 

As a tool for policy makers and managers, this map goes far beyond highlighting what thought leaders think is important in sustainable agriculture. It also reveals what strategies the community of experts thinks will be effective to accomplish any particular goal. The first step in this direction would be to examine the strongest direct causes of a goal; for example, if one's interest is in promoting the goals incorporated in *wage, labor, worker, minimum*, one should look at which concepts have the most ties to that concept in the model, the first of which is *perception, infrastructure, media, flexible* in this case. To enable these types of analyses, we provide the model presented in Figure 3.1 as a generic [comma-separated value adjacency matrix](https://www.dropbox.com/sh/zwtjkank0zqtx60/AAAnHcHuisaTc5xlq0uGODLBa?dl=0) for each of the consolidation levels. In an adjacency matrix, the entry in row $i$, column $j$ indicates the strength of causal influence from concept $i$ to concept $j$. This data also enables simulations and scenarios, leveraging the power of the network structure of a cognitive map to understand how indirect effects contribute to or detract from goals. Those interested in pursuing such an analysis would benefit from consulting @ozesmi_ecological_2004, @papageorgiou_using_2012, and the documentation of the Mental Modeler software [@gray_mental_2013].

We found substantial differences in the aggregated group mental models from the eight regions where we held workshops (Figure 3.2). Consistent with our expectation, these differences highlighted the specific challenges each region faces, such as water in Southern California, expenses near the Bay Area, and infrastructure and community in the mountains. Refreshingly, the state capital workshop aligned closely with the statewide consensus map. Notably, challenges that by nature spill across regions---particularly climate change mitigation---were not only not highlighted in any particular region, but barely appeared in the mental models. There were several climate change adaptation concepts present, but the only concept focused on climate change mitigation, *emissions, greenhouse, gas, carbon*, had just 0.2% of all connections in the model. Perhaps the old adage to "think locally and act globally" could use revision in light of our global challenges. 

Figure 3.3 and Table 3.1 show that the concepts people perceive as highly central to sustainable agriculture are widely recognized as involved in sustainable agriculture. This is reassuring, but not tautological. It could have been the case that concepts agreed to be relevant to sustainable agriculture are only peripherally important while the concepts some think are important (central) others think are irrelevant (absent from mental models). The widespread recognition of the relevance of the most central concepts in sustainable agriculture should facilitate dialog and provide common ground. It could be the result of common perception and understanding of what is important. It could also derive from social learning such as conformity or prestige bias [@richerson_cultural_2013], for example that the more people one hears talking about a concept, the more important one takes that concept to be. 

Figure 3.3 and Table 3.1 also show that concepts widely perceived as central tend to be endpoints rather than drivers of the system. This aligns with previous findings that farmers have hierarchically organized mental models of sustainability, with broad, shared goals anchoring specific, idiosyncratic strategies (causes) for the goals [@hoffman_linking_2014]. It implies that while it may be easier to achieve consensus on what policy goals ought to be, individuals are likely to hold differing opinions on what means will be effective to reach the goals. This is true among regional maps as well, where the relationship between centrality and driverness is also significantly negative (Table 3.S1), suggesting that an intermediate step such as representatives from stakeholder groups brought together to represent their constituencies may be of little help in facilitating consensus on what effective strategies can be used to reach goals.

As concepts are consolidated into broader categories, the slope of the relationship between centrality and number of maps including a concept steepens (Table 3.1, interaction effect). This is consistent with the above postulated mechanisms and reflects the fact that the consolidation process first groups together central concepts that are in many maps. These are goals for sustainable agriculture that enjoy widespread agreement. Naturally, Google search results for these concepts tend to be quite similar, precisely because they are widely understood. As a result, they merge at lower levels of consolidation. In contrast, strategies to achieve sustainable agriculture goals are more disparate. Google search results for these concepts return a wider variety of text, so these concepts only merge at high levels of consolidation. When they do finally merge, it leads to a greater number of maps sharing concepts with low average centrality, which yields the steeper slope seen at higher levels of consolidation. 

Finally, we also examined how people differently use the same concepts in their mental models. In the previous analysis, both centrality and driverness were averaged over individuals' uses, so they have captured the consensus view about the concepts. But within those averages there is variance and that variance reveals something about the way people construct their mental models. When a person thinks of a concept as more of an effect, it tends to be more central, and when someone else thinks about the same concept, but thinks about it as more of a driver, it tends to be more peripheral (Figures 4 & 5). It seems that goals for the system likely serve as cognitive access points: When a knowledge domain is activated, the first thing to come up is goals for the system, which then have multiple causes attached to them. This is consistent with our previous finding that the motif of multiple causes of a single effect is almost universally over-represented relative to chance in these mental models, while the motif of multiple effects of a single causes is more rare [@levy_structure_2017].  

Overall, there are three take-home messages from this paper. One is that internet search results can productively be used to construct a corpus from arbitrary syntactic entities to enable semantic analysis. Another is that cognitive maps can be combined across individuals and groups to produce a useful aggregation of knowledge. Finally, there is widespread agreement on the most central concepts involved in sustainable agriculture, which tend to be goals, while there is more heterogeneity across peripheral strategies to achieve those goals. 













\newpage



\appendix

\section{Supplement to Chapter 1}



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



![Goodness of fit plots for ERGM of viticulture knowledge networks in Central Coast.](figure/unnamed-chunk-1-1.png)

![Goodness of fit plots for ERGM of viticulture knowledge networks in Napa.](figure/unnamed-chunk-1-2.png)

![Goodness of fit plots for ERGM of viticulture knowledge networks in Lodi.](figure/unnamed-chunk-1-3.png)

\newpage

### ERGM MCMC Diagnostics

<!-- #### Central Coast -->

![MCMC traces for ERGMs of viticulture knowledge network in Central Coast.](figure/unnamed-chunk-2-1.png)

<!-- #### Napa -->

![MCMC traces for ERGMs of viticulture knowledge network in Napa.](figure/unnamed-chunk-3-1.png)

<!-- #### Lodi -->

![MCMC traces for ERGMs of viticulture knowledge network in Lodi.](figure/unnamed-chunk-4-1.png)

\newpage












\section{Supplement to Chapter 2}


Table B.1 presents a model summary table for the ordinal logistic regression of systems thinking cluster on education and experience. This is the same model presented in Figure 2.3 of the manuscript.

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




\newpage









\section{Supplement to Chapter 3}



## Number of Concepts per Cluster

![Number of original concepts consolidated into each cluster, at each level of consolidation.](figure/concepts per cluster-1.png)


## What Concepts are Emphasized at the State Level?

![Centrality and driverness of concepts in statewide aggregate cognitive map at 40-concept consolidation level.](figure/state concepts plot-1.png)

## Regional Analyses


![Regional maps. Concepts' average centrality in the maps in which they appear versus the number of maps in which they appear. Colors indicate concept driverness as in Figure 1.](figure/reg number maps plot-1.png)


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



![Each line reflects one concept's OLS estimate for the slope of the relationship between the concept's (log-10) centrality and its driverness (0 = pure effect; 1 = pure cause) across regional maps, at various levels of concept consolidation.](figure/reg driverness regression lines-1.png)

![Distributions of slope estimates for the OLS regression of a concept's centrality (base-10 logarithm of total degree centrality) versus its driverness ($\in [0, 1]$) in regional maps. Within each level of consolidation, each concept yields one slope estimate, with each map employing the concept forming an observation for the regression. Outlying estimates (outside 1.5 $\times$ the interquartile range beyond the first and third quartiles) are not plotted for visual clarity but are used in determining boxplot positions.](figure/reg driverness model distributions-1.png)


\newpage

\setstretch{1.2}
\setlength{\parskip}{12pt}
\setlength{\parindent}{0em}
\setlength{\leftskip}{0em}

# References
