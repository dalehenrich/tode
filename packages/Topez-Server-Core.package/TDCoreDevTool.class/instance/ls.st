as yet unclassified
ls
    self halt.
    ^ tokens size = 1
        ifTrue: [ topez currentNode listContents ]
        ifFalse: [ (topez lookup: (tokens at: 2)) listContents ]