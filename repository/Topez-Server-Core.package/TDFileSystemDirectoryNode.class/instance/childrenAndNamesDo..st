as yet unclassified
childrenAndNamesDo: aBlock
  ^ (self directoryEntries sorted: [ :a :b | a name <= b name ])
    do: [ :directoryEntry | 
      | child |
      child := directoryEntry asTDFileSystemNode
        topez: self topez;
        parent: self;
        yourself.
      aBlock value: child value: child renderNameText ]