public
getProxyFor: anObject
    self noProxy
        ifTrue: [ ^ anObject ].
    ^ TZProxyObject new body: anObject