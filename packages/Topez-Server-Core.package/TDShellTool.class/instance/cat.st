as yet unclassified
cat
    ^ (tokens size = 1
        ifTrue: [ topez currentNode ]
        ifFalse: [ topez lookup: (tokens at: 2) ]) cat