api
deleteMethodElement: aTZMethodElementProxy
    | cl selector |
    cl := aTZMethodElementProxy proxyClass asTopezNative.
    selector := aTZMethodElementProxy selector asTopezNative.
    cl removeSelector: selector.
    ^ true