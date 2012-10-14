as yet unclassified
findMatchingClasses: aString
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'findMatchingClasses:level:'
                withArgs:
                    {aString.
                    3} ]