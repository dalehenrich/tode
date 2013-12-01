tests
rsyncChecksum: rsyncOptionString
  "only difference is first char in destination ... timestamps and sizes the same"

  | childNode tmpSrcNode tmpDestNode srcNode destNode rsync rootPath srcModificationTime |
  rootPath := self rootNodePath.
  tmpSrcNode := self lookupSrcNode: rootPath.
  tmpDestNode := self lookupDestNode: rootPath.
  srcNode := tmpSrcNode addChild: 'src'.
  destNode := tmpDestNode addChild: 'dest'.
  srcModificationTime := DateAndTime now - (Duration days: 5).
  self subtlyDifferentLeafNodes
    do: [ :childNode | 
      childNode modificationTime: srcModificationTime.
      destNode addChildNode: childNode ].
  self standardLeafNodes
    do: [ :childNode | 
      | rsync |
      childNode modificationTime: srcModificationTime.
      srcNode addChildNode: childNode.
      self
        validateNode: rootPath , 'src/' , childNode name
        modificationTime: srcModificationTime.
      rsync := self
        runStonCommandLine:
          'ston rsync ' , rsyncOptionString , ' ' , srcNode printString , childNode name
            , ' ' , destNode printString.
      rsyncOptionString isEmpty
        ifTrue: [ 
          self
            validate: rootPath , 'src/' , childNode name
            notEquals: rootPath , 'dest/' , childNode name
            with: rsync ]
        ifFalse: [ 
          self
            validate: rootPath , 'src/' , childNode name
            equals: rootPath , 'dest/' , childNode name
            with: rsync ] ]