coding
classDefinition: classProxy
    ^ self rawInSession: [ :sess | sess receiverNB: classProxy performNoDebug: 'definition' withArgs: #() ]