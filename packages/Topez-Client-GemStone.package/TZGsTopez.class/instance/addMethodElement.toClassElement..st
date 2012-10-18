as yet unclassified
addMethodElement: methodElementProxy toClassElement: classProxy
    ^ self
        compileMethod: methodElementProxy source asTopezNative
        class: classProxy elementClass
        category: methodElementProxy category asTopezNative
        forMeta: methodElementProxy isMeta asTopezNative