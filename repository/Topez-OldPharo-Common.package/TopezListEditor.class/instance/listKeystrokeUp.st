accessing
listKeystrokeUp
    listIndex = 1
        ifTrue: [ 
            self listIndex: 0.
            ^ true ].
    ^ false