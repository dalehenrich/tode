as yet unclassified
gitPathFor: projectName
  | projectNode nodeName reposNode |
  projectNode := topez lookup: projectName.
  reposNode := projectNode lookupPath: #('gitRepo') ifAbsent: [ ^ nil ].
  ^ reposNode contents asString