api
addMethodElement: methodElementProxy toClassElement: classProxy
    ^ self
        compileMethod: methodElementProxy source asTopezNative
        class: classProxy elementClass asTopezProxy
        isMeta: methodElementProxy isMeta asTopezNative
        category: methodElementProxy category asTopezNative