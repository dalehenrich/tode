as yet unclassified
ls
    ^ tokens size = 1
        ifTrue: [ topez currentNode listContents ]
        ifFalse: [ (topez lookup: (tokens at: 2)) listContents ]