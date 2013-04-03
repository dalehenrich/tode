public
nextPut: anObject
    self noProxy
        ifTrue: [ ^ super nextPut: anObject ].
    anObject tzProxyStonOn: self