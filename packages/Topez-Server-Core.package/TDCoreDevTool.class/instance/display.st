as yet unclassified
display
    | node stream |
    node := tokens size = 1
        ifTrue: [ topez currentNode ]
        ifFalse: [ topez lookup: (tokens at: 2) ].
    node isLeaf
        ifTrue: [ ^ node contents tzNodeDisplay ].
    stream := TextStream on: Text new.
    node contents
        do: [ :childName | 
            | child |
            child := node childNamed: childName ifAbsent: [  ].
            child tzNodeDisplayOn: stream ].
    ^ stream contents