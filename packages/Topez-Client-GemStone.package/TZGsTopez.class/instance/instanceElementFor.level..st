coding
instanceElementFor: instanceProxy level: level
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'instanceElementFor:level:'
                withArgs:
                    {instanceProxy.
                    level} ]