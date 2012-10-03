debugging
stackFor: aProcessContext
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'stackFor:level:'
                withArgs:
                    {aProcessContext.
                    2} ]