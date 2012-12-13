as yet unclassified
ds
    | node stream |
    node := tokens size = 1
        ifTrue: [ topez currentNode ]
        ifFalse: [ topez lookup: (tokens at: 2) ].
    node isLeaf
        ifTrue: [ ^ node contents tzNodeDisplay ].
    stream := TextStream on: Text new.
    node
        childrenDo: [ :child | 
            child renderNameTextOn: stream.
            stream nextPutAll: ' -> '.
            child dotSelfObject tzNodeDisplayOn: stream.
            stream cr ].
    ^ stream contents