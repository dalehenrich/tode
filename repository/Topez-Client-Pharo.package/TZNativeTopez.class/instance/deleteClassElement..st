coding
deleteClassElement: aTZClassElement
    ^ self rawInSession: [ :sess | sess deleteClassElement: aTZClassElement asTopezProxy ]