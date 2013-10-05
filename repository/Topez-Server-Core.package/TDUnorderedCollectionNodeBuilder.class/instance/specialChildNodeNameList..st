as yet unclassified
specialChildNodeNameList: parentNode
  parentNode basicContents _indexedPaths
    ifNil: [ ^ super specialChildNodeNameList: parentNode ].
  ^ (super specialChildNodeNameList: parentNode) , #('(index list)')