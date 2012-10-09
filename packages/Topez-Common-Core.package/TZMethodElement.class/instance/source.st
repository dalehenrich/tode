accessing
source
    ^ self isMeta
        ifTrue: [ self proxyClass native class sourceCodeAt: self selector asSymbol ]
        ifFalse: [ self proxyClass native sourceCodeAt: self selector asSymbol ]