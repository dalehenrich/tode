api
deleteClassElement: aTZClassElementProxy
    | cl |
    cl := aTZClassElementProxy proxyClass asTopezNative.
    cl removeFromSystem.
    ^ true