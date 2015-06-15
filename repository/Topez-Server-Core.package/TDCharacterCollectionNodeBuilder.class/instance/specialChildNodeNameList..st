as yet unclassified
specialChildNodeNameList: parentNode
  ^ (super specialChildNodeNameList: parentNode)
    , #('(size)' '(bytes)' '(utf8)')