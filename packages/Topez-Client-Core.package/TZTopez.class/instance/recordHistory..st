as yet unclassified
recordHistory: aProxyOrObject
    (aProxyOrObject isString and: [ aProxyOrObject isEmpty ])
        ifTrue: [ ^ aProxyOrObject ].
    self status history add: aProxyOrObject.
    ^ aProxyOrObject