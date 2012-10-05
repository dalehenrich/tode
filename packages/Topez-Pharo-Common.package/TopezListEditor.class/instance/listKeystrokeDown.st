accessing
listKeystrokeDown
    listIndex = list size
        ifTrue: [ 
            self listIndex: 0.
            ^ true ].
    ^ false