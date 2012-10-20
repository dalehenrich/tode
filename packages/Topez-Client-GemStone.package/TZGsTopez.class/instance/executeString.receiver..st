private
executeString: aString receiver: receiverProxy
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'executeExpressionFrom:inContext:level:'
                withArgs:
                    {aString.
                    receiverProxy.
                    2} ]