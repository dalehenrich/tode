transactions
referencesTo: aString isMeta: isMeta in: aClassProxyOrNil
    self setFindText: aString.
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'referencesTo:isMeta:in:level:'
                withArgs:
                    {aString.
                    isMeta.
                    aClassProxyOrNil.
                    2} ]