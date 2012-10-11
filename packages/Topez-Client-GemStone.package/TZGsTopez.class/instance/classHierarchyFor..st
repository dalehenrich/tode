as yet unclassified
classHierarchyFor: classProxy
    self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'classHierarchyFor:level:'
                withArgs:
                    {classProxy.
                    2} ]