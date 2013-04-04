coding
sourceForMethod: selector
    self currentClass == nil
        ifTrue: [ self error: 'currentClass  must be set' ].
    ^ self rawInSession: [ :sess | sess sourceForMethod: selector inClass: self currentClass ]