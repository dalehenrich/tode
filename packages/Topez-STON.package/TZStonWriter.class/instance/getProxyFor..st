public
getProxyFor: anObject
    self noProxy
        ifTrue: [ ^ anObject ].
    ^ anObject tzProxyClass new body: anObject