as yet unclassified
methodTemplateElementFor: classProxy isMeta: isMeta
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'methodTemplateElementFor:isMeta:level:'
                withArgs:
                    {classProxy.
                    isMeta.
                    1} ]