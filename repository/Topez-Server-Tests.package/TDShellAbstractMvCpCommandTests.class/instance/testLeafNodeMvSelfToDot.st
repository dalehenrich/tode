tests
testLeafNodeMvSelfToDot
  | srcNode rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  self standardLeafNodes
    do: [ :childNode | 
      srcNode addChildNode: childNode.
      self
        should: [ 
          self
            evaluateCommandString:
              'cd ' , srcNode printString , '; mv ' , srcNode printString , childNode name
                , ' .' ]
        raise: Error ]