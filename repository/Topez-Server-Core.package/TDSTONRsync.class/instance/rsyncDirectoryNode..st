rsync
rsyncDirectoryNode: aTDDirectoryNode
  "check options and determine whether or not the directory node should by rsynced ... for now do it uncoditionally"

  destinationNode := destinationNode addRsyncChildNode: aTDDirectoryNode name.
  aTDDirectoryNode rsyncChildrenUsing: self