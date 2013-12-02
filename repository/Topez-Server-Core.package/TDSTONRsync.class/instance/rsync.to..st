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
      self isDryRun
        ifFalse: [ 
          (self isOptionSet: 'relative')
            ifTrue: [ 
              | destinationPaths |
              "the source path is tacked onto the destination (whether or not the source path is itself a relative path)"
              destinationPaths := sourcePath findTokens: '/'.
              (sourcePath endsWith: '/')
                ifFalse: [ 
                  "last path entry is a leafNode"
                  destinationPaths := destinationPaths
                    copyFrom: 1
                    to: destinationPaths size - 1 ].
              destinationPaths
                do: [ :childName | destinationNode := destinationNode addChildIfAbsent: childName ] ] ].
      (sourcePath endsWith: '/')
        ifTrue: [ sourceNode rsyncCopyNodeChildrenUsing: self ]
        ifFalse: [ sourceNode rsyncCopyNodeUsing: self ] ]