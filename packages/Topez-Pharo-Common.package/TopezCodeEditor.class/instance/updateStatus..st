accessing
updateStatus: aTZTopezStatus
    classOrMetaClass ifNotNil: [ aTZTopezStatus currentClass: self classOrMetaClass ]