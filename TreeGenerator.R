library(collapsibleTree)
`Locke Data`<-readr::read_csv("SiteDecisionTree.csv")
tree<-collapsibleTree(
  `Locke Data`,
  c("L1","L2","L3"),
  collapsed = FALSE,
  nodeSize = "leafCount"
)

tree

htmlwidgets::saveWidget(tree, "tree.html")
