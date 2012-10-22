as yet unclassified
addMethodElement: methodElementProxy toElement: anElementProxy
    ^ self
        compileMethod: methodElementProxy source asTopezNative
        class: anElementProxy elementClass
        category: methodElementProxy category asTopezNative
        forMeta: methodElementProxy isMeta asTopezNative