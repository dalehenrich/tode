transactions
implementorsOf: aString
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'implementorsOf:level:'
                withArgs:
                    {aString.
                    2} ]