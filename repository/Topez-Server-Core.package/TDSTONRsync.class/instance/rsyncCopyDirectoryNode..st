rsync
rsyncCopyDirectoryNode: aTDDirectoryNode
  "check options and determine whether or not the directory node should by rsynced ... for now do it uncoditionally"

  (self isOptionSet: 'recursive')
    ifFalse: [ 
      "If you don't specify --recursive then rsync won't copy directories at all."
      ^ self ].
  self isDryRun
    ifFalse: [ destinationNode := destinationNode addChildIfAbsent: aTDDirectoryNode name ].
  aTDDirectoryNode rsyncCopyNodeChildrenUsing: self