public gci calls
clearStack: aGsProcess
    number == nil
        ifTrue: [ ^ self ].
    self setSession.
    self library apiGciClearStack: (self asOopType: aGsProcess)