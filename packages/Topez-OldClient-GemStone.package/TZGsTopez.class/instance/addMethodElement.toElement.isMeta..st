as yet unclassified
addMethodElement: methodElementProxy toElement: anElementProxy isMeta: isMeta
    ^ self
        compileMethod: methodElementProxy source asTopezNative
        class: anElementProxy elementClass
        category: methodElementProxy category asTopezNative
        forMeta: isMeta asTopezNative