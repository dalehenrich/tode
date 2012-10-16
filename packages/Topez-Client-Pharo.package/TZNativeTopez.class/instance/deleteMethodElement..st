coding
deleteMethodElement: aTZMethodElement
    ^ self rawInSession: [ :sess | sess deleteMethodElement: aTZMethodElement asTopezProxy ]