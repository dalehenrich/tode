tests
testRsyncFileRelativeTrailingSlash
  | rootPath tmpSrcNode tmpDestNode childNode srcNode destNode optionString |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'foo'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  topez setCurrentNode: srcNode parent.
  srcNode := srcNode addChild: 'bar'.
  srcNode := srcNode addChild: 'src'.
  optionString := '--relative'.
  self standardLeafNodes
    do: [ :childNode | 
      childNode
        modificationTime:
          (childNode modificationTime - (Duration seconds: 5)) beRounded.
      srcNode addChildNode: childNode.
      self
        should: [ 
          self
            runRsyncCommandLine:
              'rsync ' , optionString , ' foo/bar/src/' , childNode name , '/ '
                , destNode printString ]
        raise: Error ]