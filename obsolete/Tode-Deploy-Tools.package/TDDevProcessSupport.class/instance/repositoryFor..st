as yet unclassified
repositoryFor: projectName
  | nodeName reposNode |
  nodeName := projectName , '/repo'.
  reposNode := topez lookup: nodeName.
  ^ reposNode dotSelfObject