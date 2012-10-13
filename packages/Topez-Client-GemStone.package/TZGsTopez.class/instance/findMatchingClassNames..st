as yet unclassified
findMatchingClassNames: aString
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'findMatchingClassNames:level:'
                withArgs:
                    {aString.
                    1} ]