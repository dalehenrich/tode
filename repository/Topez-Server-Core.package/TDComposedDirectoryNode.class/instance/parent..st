as yet unclassified
parent: aNode
  parent := aNode.
  contents ifNotNil: [ contents parent: aNode ]