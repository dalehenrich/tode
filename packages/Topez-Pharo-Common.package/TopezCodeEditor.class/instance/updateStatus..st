accessing
updateStatus: aTZTopezStatus
    self edittingCode
        ifTrue: [ aTZTopezStatus currentClass: self sourceElement elementClass ]