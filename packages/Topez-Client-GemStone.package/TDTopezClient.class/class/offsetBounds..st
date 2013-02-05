class initialization
offsetBounds: aPoint
    | newBounds |
    newBounds := Dictionary new.
    Bounds
        keysAndValuesDo: [ :locationName :rectangle | newBounds at: locationName put: (rectangle translateBy: aPoint) ].
    ^ newBounds