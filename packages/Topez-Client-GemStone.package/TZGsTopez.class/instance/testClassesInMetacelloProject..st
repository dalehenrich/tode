metacello
testClassesInMetacelloProject: projectProxy
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'testClassesInMetacelloProject:level:'
                withArgs:
                    {projectProxy.
                    2} ]