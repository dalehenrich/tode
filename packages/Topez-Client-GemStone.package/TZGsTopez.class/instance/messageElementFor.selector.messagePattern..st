as yet unclassified
messageElementFor: behaviorProxy selector: selector messagePattern: aString
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'messageElementFor:selector:messagePattern:level:'
                withArgs:
                    {behaviorProxy.
                    selector.
                    aString.
                    2} ]