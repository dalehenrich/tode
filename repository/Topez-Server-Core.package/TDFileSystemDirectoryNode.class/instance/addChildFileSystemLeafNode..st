as yet unclassified
addChildFileSystemLeafNode: aNode
  "don't transfer big files this way:)"

  (aNode parent notNil
    and: [ aNode parent fileDirectory fileExists: aNode name ])
    ifTrue: [ 
      aNode parent fileDirectory
        readOnlyFileNamed: aNode name
        do: [ :sourceStream | 
          self fileDirectory
            forceNewFileNamed: aNode name
            do: [ :fileStream | fileStream nextPutAll: sourceStream contents ] ] ]
    ifFalse: [ 
      self fileDirectory
        forceNewFileNamed: aNode name
        do: [ :fileStream | fileStream nextPutAll: '' ] ].
  ^ self _childNodeFor: aNode name