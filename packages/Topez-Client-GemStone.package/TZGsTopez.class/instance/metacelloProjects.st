metacello
metacelloProjects
    ^ self
        doInSession: [ :sess | sess receiverNB: self currentEngine performNoDebug: 'metacelloProjects:' withArgs: {2} ]