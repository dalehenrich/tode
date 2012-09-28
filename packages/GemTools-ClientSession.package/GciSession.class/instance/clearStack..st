Library
clearStack: aGsProcess
    number == nil
        ifTrue: [ ^ self ].
    self setSession.
    self library apiGciClearStack: (aGsProcess asOopTypeWith: self library oopTypeClass)