coding
sourceForClassMethod: selector
    self currentClass == nil
        ifTrue: [ self error: 'currentClass must be set' ].
    ^ self rawInSession: [ :sess | sess sourceForClassMethod: selector inClass: self currentClass ]