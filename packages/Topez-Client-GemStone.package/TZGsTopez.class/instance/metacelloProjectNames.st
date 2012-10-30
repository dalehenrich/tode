metacello
metacelloProjectNames
    ^ self
        doInSession: [ :sess | sess receiverNB: self currentEngine performNoDebug: 'metacelloProjectNames:' withArgs: {2} ]