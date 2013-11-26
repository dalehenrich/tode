rsync
rsync: sourcePaths to: destinationPath
  | originalDestinationNode |
  originalDestinationNode := destinationNode := self topez
    lookup: destinationPath.
  sourcePaths
    do: [ :sourcePath | 
      | sourceNode |
      "A trailing / on a source name means 'copy the contents of this directory'. Without a trailing slash it means 'copy the directory'. "
      sourceNode := self topez lookup: sourcePath.
      destinationNode := originalDestinationNode.
      (sourcePath endsWith: '/')
        ifTrue: [ sourceNode rsyncCopyNodeChildrenUsing: self ]
        ifFalse: [ sourceNode rsyncCopyNodeUsing: self ] ]