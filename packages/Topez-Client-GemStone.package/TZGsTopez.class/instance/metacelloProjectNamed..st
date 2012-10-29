metacello
metacelloProjectNamed: aProjectName
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'metacelloProjectNamed:level:'
                withArgs:
                    {aProjectName.
                    2} ]