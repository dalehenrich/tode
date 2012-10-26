private
executeStringRaw: aString receiver: receiverProxy level: level
    ^ self
        rawInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'executeExpressionFrom:inContext:level:'
                withArgs:
                    {aString.
                    receiverProxy.
                    level} ]