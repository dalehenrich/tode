accessing
recordHistory: aProxyOrObject
    true
        ifTrue: [ ^ aProxyOrObject ].
    (aProxyOrObject isString and: [ aProxyOrObject isEmpty ])
        ifTrue: [ ^ aProxyOrObject ].
    self status history add: aProxyOrObject.
    ^ aProxyOrObject