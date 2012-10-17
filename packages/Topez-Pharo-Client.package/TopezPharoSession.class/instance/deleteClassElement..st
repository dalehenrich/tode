api
deleteClassElement: aTZClassElementProxy
    | cl |
    cl := aTZClassElementProxy elementClass asTopezNative.
    cl removeFromSystem.
    ^ true