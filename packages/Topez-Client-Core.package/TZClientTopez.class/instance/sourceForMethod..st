coding
sourceForMethod: method
    ^ self rawInSession: [ :sess | sess receiverNB: method performNoDebug: 'sourceString' withArgs: #() ]