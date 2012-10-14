as yet unclassified
classElementForClass: classProxy
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'classElementForClass:level:'
                withArgs:
                    {classProxy.
                    2} ]