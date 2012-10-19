metacello
deleteMethodElement: aTZMethodElement
    | cl selector |
    cl := aTZMethodElement elementClass.
    aTZMethodElement isMeta
        ifTrue: [ cl := cl class ].
    selector := aTZMethodElement selector asTopezNative.
    cl removeSelector: selector asSymbol.
    ^ self toString: true level: 0