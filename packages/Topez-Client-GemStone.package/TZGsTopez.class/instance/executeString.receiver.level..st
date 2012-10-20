private
executeString: aString receiver: receiverProxy level: level
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'executeExpressionFrom:inContext:level:'
                withArgs:
                    {aString.
                    receiverProxy.
                    level} ]