accessing
setSource
    source := self isMeta
        ifTrue: [ self elementClass asTopezNative class sourceCodeAt: self selector asSymbol ]
        ifFalse: [ self elementClass asTopezNative sourceCodeAt: self selector asSymbol ]