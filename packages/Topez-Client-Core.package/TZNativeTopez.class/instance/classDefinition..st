coding
classDefinition: classProxy
    ^ self rawInSession: [ :sess | sess classDefinition: classProxy ]