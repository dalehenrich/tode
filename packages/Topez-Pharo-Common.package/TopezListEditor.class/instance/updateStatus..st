accessing
updateStatus: aTZTopezStatus
    listIndex == 0
        ifTrue: [ ^ self ].
    (self list at: listIndex) updateStatus: aTZTopezStatus