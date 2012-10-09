as yet unclassified
instanceSelectors: classProxy
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'selectorsForClass:inClass:level:'
                withArgs:
                    {classProxy.
                    false.
                    2} ]