as yet unclassified
methodElementForClass: classProxy isMeta: isMeta selector: selector
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'methodElementForClass:isMeta:selector:level:'
                withArgs:
                    {classProxy.
                    isMeta.
                    selector.
                    2} ]