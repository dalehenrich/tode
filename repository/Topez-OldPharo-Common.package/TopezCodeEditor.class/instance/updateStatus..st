accessing
updateStatus: aTZTopezStatus
    (self edittingCode and: [aTZTopezStatus wantsClassUpdate])
        ifTrue: [ aTZTopezStatus currentClass: self sourceElement elementClass ]