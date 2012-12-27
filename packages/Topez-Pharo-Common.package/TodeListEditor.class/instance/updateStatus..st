accessing
updateStatus: aTZTopezStatus
    listIndex == 0
        ifTrue: [ ^ self ].
    aTZTopezStatus currentClass: (self list at: listIndex) elementClass