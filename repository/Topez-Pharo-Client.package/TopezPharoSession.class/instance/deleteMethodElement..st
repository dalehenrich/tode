api
deleteMethodElement: aTZMethodElementProxy
    | cl selector |
    cl := aTZMethodElementProxy elementClass asTopezNative.
    aTZMethodElementProxy isMeta asTopezNative
        ifTrue: [ cl := cl class ].
    selector := aTZMethodElementProxy selector asTopezNative.
    cl removeSelector: selector asSymbol.
    ^ true