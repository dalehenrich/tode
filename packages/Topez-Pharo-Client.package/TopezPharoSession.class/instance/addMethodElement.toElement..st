api
addMethodElement: methodElementProxy toElement: anElementProxy
    ^ self
        compileMethod: methodElementProxy source asTopezNative
        class: anElementProxy elementClass asTopezProxy
        isMeta: methodElementProxy isMeta asTopezNative
        category: methodElementProxy category asTopezNative