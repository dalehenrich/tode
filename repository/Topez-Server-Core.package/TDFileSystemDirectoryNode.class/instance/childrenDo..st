as yet unclassified
childrenDo: aBlock
  ^ ((self directoryEntries sorted: [ :a :b | a name <= b name ])
    collect: [ :directoryEntry | 
      directoryEntry asTDFileSystemNode
        topez: self topez;
        parent: self;
        yourself ])
    do: aBlock