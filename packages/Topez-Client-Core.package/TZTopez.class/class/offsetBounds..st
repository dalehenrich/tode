class initialization
offsetBounds: aPoint
    | newBounds |
    newBounds := Dictionary new.
    Bounds keysAndValuesDo: [ :name :rectangle | newBounds at: name put: (rectangle translateBy: aPoint) ].
    ^ newBounds