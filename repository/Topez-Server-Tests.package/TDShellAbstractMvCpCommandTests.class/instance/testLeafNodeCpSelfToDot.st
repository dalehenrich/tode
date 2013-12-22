tests
testLeafNodeCpSelfToDot
  | srcNode rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  self standardLeafNodes
    do: [ :childNode | 
      srcNode addChildNode: childNode.
      self
        should: [ 
          self topez
            evaluateCommandString:
              'cd ' , srcNode printString , '; cp ' , srcNode printString , childNode name
                , ' .' ]
        raise: Error ]