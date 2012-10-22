metacello
deleteClassElement: aTZClassElement
    | cl |
    cl := aTZClassElement elementClass.
    cl removeFromSystem.
    ^ self toString: true level: 0