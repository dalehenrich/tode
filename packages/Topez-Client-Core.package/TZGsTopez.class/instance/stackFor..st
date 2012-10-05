debugging
stackFor: execeptionProxy
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'stackFor:level:'
                withArgs:
                    {execeptionProxy context.
                    2} ]