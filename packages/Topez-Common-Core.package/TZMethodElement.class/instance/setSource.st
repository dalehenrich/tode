accessing
setSource
    source := self isMeta
        ifTrue: [ self proxyClass asTopezNative class sourceCodeAt: self selector asSymbol ]
        ifFalse: [ self proxyClass asTopezNative sourceCodeAt: self selector asSymbol ]