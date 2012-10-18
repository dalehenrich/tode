as yet unclassified
deleteMethodElement: aTZMethodElementProxy
    ^ self
        doInSession: [ :sess | sess receiverNB: self currentEngine performNoDebug: 'deleteMethodElement:' withArgs: {aTZMethodElementProxy} ]