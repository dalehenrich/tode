rsync
rsyncCopyDirectoryNode: aTDDirectoryNode
  "check options and determine whether or not the directory node should by rsynced ... for now do it uncoditionally"

  self isDryRun
    ifFalse: [ destinationNode := destinationNode addRsyncChildNode: aTDDirectoryNode name ].
  aTDDirectoryNode rsyncCopyNodeChildrenUsing: self