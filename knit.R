# In the original files, bump all the header levels down one and change
# output to md_document: variant: markdown
# Then copy and paste the .md files written here into dissertation.md

library(knitr)
dir.create("chapters")
knit("../viticulture_new/papers/regional_change/ViticultureNetworks_dissertation.Rmd", 
     output = "chapters/ch1.md")
knit("../viticulture_new/papers/regional_change/ViticultureNetworks-Supplement_dissertation.Rmd", 
     output = "chapters/ch1_supplement.md")
# Manually separate GOF plots onto separate lines.

knit("../FCM/papers/structure/MMstructure_dissertation.Rmd", 
     output = "chapters/ch2.md")
knit("../FCM/papers/structure/MMstructure_supplement_dissertation.Rmd", 
     output = "chapters/ch2_supplement.md")

knit("../FCM/papers/concepts/ch3_dissertation.Rmd",
     output = "chapters/ch3.md")
knit("../FCM/papers/concepts/ch3_supplement_dissertation.Rmd",
     output = "chapters/ch3_supplement.md")
