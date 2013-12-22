tests
testLeafNodeCpNoDestParent
  | srcNode destNode rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  self standardLeafNodes
    do: [ :childNode | 
      srcNode addChildNode: childNode.
      self
        should: [ 
          self topez
            evaluateCommandString:
              'cp ' , srcNode printString , childNode name , ' ' , destNode printString
                , 'xxx/yyy' ]
        raise: Error ]