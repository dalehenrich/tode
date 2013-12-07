tests
rsyncDirRecurse: recurseOption
  | childNode srcNode destNode rsync rootPath |
  rootPath := self rootNodePath.
  srcNode := self lookupSrcNode: rootPath , 'src'.
  destNode := self lookupDestNode: rootPath , 'dest'.
  self standardLeafNodes
    do: [ :childNode | 
      | srcPath |
      childNode
        modificationTime: childNode modificationTime - (Duration seconds: 5).
      srcNode addChildNode: childNode.
      srcPath := srcNode printString.
      srcPath := srcPath copyFrom: 1 to: srcPath size - 1.	"remove trailing / to copy directory to destination"
      rsync := self
        runRsyncCommandLine:
          'rsync ' , recurseOption , ' ' , srcPath , ' ' , destNode printString.
      recurseOption isEmpty
        ifTrue: [ 
          self
            should: [ self topez lookup: rootPath , 'dest/' , childNode name ]
            raise: Error ]
        ifFalse: [ 
          self
            validate: rootPath , 'src/' , childNode name
            equals: rootPath , 'dest/src/' , childNode name
            with: rsync.
          self
            validateModificationTimes: rootPath , 'src/' , childNode name
            between: rootPath , 'dest/src/' , childNode name
            match: false ] ]