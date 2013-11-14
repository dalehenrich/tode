rsync
rsyncLeafNode: aTDLeafNode
  "check options and determine whether or not the leaf node should by rsynced ... for now do it uncoditionally"

  | destinationLeaf |
  destinationLeaf := destinationNode
    rsyncChildNamed: aTDLeafNode name
    ifAbsent: [  ].
  destinationLeaf
    ifNotNil: [ 
      | sourceSeconds sourceSize destinationSeconds destinationSize modifyWindow checksum |
      sourceSeconds := aTDLeafNode modificationTime asSeconds truncated.
      destinationSeconds := destinationLeaf modificationTime asSeconds truncated.
      sourceSize := aTDLeafNode rsyncSize.
      destinationSize := destinationLeaf rsyncSize.
      checksum := self isOptionSet: 'checksum'.
      (self isOptionSet: 'ignore-times')
        ifTrue: [ 
          "unconditionally transfer all files ... unless checksum set"
          checksum
            ifTrue: [ 
              (aTDLeafNode rsyncEquals: destinationLeaf with: self)
                ifTrue: [ ^ self ] ] ]
        ifFalse: [ 
          sourceSize = destinationSize
            ifTrue: [ 
              checksum
                ifTrue: [ 
                  (aTDLeafNode rsyncEquals: destinationLeaf with: self)
                    ifTrue: [ ^ self ] ]
                ifFalse: [ 
                  (self isOptionSet: 'size-only')
                    ifTrue: [ ^ self ].
                  modifyWindow := (self optionValue: 'modify-window') asNumber.
                  (destinationSeconds - sourceSeconds) abs <= modifyWindow
                    ifTrue: [ ^ self ] ] ] ].
      (self isOptionSet: 'update')
        ifTrue: [ 
          destinationSeconds > sourceSeconds
            ifTrue: [ ^ self ] ] ].
  destinationNode rsyncLeafNode: aTDLeafNode