tests
rsyncDirRecurse: recurseOption
  | childNode tmpSrcNode tmpDestNode srcNode destNode rsync rootPath |
  rootPath := self rootNodePath.
  tmpSrcNode := self lookupSrcNode: rootPath.
  tmpDestNode := self lookupDestNode: rootPath.
  srcNode := tmpSrcNode addChild: 'src'.
  destNode := tmpDestNode addChild: 'dest'.
  self standardLeafNodes
    do: [ :childNode | 
      | srcPath |
      childNode
        modificationTime: childNode modificationTime - (Duration seconds: 5).
      srcNode addChildNode: childNode.
      srcPath := srcNode printString.
      srcPath := srcPath copyFrom: 1 to: srcPath size - 1.	"remove trailing / to copy directory to destination"
      rsync := self
        runStonCommandLine:
          'ston rsync ' , recurseOption , ' ' , srcPath , ' ' , destNode printString.
      recurseOption isEmpty
        ifTrue: [ 
          self
            should: [ self topez lookup: rootPath , 'dest/' , childNode name ]
            raise: Error ]
        ifFalse: [ 
          self
            validate: rootPath , 'src/' , childNode name
            equals: rootPath , 'src/' , childNode name
            with: rsync.
          self
            validateModificationTimes: rootPath , 'src/' , childNode name
            between: rootPath , 'src/' , childNode name
            match: false ] ]