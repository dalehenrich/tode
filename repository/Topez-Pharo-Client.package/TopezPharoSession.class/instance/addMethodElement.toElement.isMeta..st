api
addMethodElement: methodElementProxy toElement: anElementProxy isMeta: isMeta
    ^ self
        compileMethod: methodElementProxy source asTopezNative
        class: anElementProxy elementClass asTopezProxy
        isMeta: isMeta asTopezNative
        category: methodElementProxy category asTopezNative