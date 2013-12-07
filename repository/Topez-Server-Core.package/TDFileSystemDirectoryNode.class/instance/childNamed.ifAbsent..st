as yet unclassified
childNamed: childName ifAbsent: absentBlock
  ^ (self
    resolveSpecialChildNamed: childName
    ifAbsent: [ 
      (self directoryEntries
        detect: [ :entry | 
          (entry name endsWith: self stonFileExtension)
            ifTrue: [ entry asTDFileSystemNode name = childName ]
            ifFalse: [ entry name = childName ] ]
        ifNone: [ ^ absentBlock value ]) asTDFileSystemNode
        parent: self;
        yourself ])
    topez: self topez;
    yourself