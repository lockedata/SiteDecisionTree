library(collapsibleTree)
`Locke Data`<-readr::read_csv("SiteDecisionTree.csv")
`Locke Data`$end<-glue::glue('<a href="{url}">{text}</a>',url=`Locke Data`$URL,text=`Locke Data`$L3)

tree<-collapsibleTree(
  `Locke Data`,
  c("L1","L2","L3"),
  collapsed = FALSE,
  nodeSize = "leafCount",
  tooltip = TRUE,
  tooltipHtml = "end"
)

tree

htmlwidgets::saveWidget(tree, "tree.html")
htmlwidgets::saveWidget(tree, "tree_full.html", selfcontained = FALSE)
