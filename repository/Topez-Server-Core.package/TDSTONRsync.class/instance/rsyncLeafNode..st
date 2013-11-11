rsync
rsyncLeafNode: aTDLeafNode
  "check options and determine whether or not the leaf node should by rsynced ... for now do it uncoditionally"

  | destinationLeaf |
  destinationLeaf := destinationNode
    rsyncChildNamed: aTDLeafNode name
    ifAbsent: [  ].
  destinationLeaf
    ifNotNil: [ 
      | sourceSeconds sourceSize destinationSeconds destinationSize modifyWindow |
      sourceSeconds := aTDLeafNode modificationTime asSeconds truncated.
      destinationSeconds := destinationLeaf modificationTime asSeconds truncated.
      sourceSize := aTDLeafNode contents size.
      destinationSize := destinationLeaf contents size.
      (self isOptionSet: 'ignore-times')
        ifFalse: [ 
          sourceSize = destinationSize
            ifTrue: [ ^ self ].
          (self isOptionSet: 'size-only')
            ifTrue: [ ^ self ].
          modifyWindow := self optionValue: 'modify-window'.
          (destinationSeconds - sourceSeconds) abs <= modifyWindow
            ifTrue: [ ^ self ] ].
      (self isOptionSet: 'update')
        ifTrue: [ 
          destinationSeconds > sourceSeconds
            ifTrue: [ ^ self ] ] ].
  destinationNode rsyncLeafNode: aTDLeafNode