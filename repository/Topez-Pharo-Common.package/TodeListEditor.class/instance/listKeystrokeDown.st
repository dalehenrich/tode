accessing
listKeystrokeDown
    listIndex = self list size
        ifTrue: [ 
            self listIndex: 0.
            ^ true ].
    ^ false