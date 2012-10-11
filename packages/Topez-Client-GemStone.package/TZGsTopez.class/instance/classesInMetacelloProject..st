metacello
classesInMetacelloProject: projectProxy
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'classesInMetacelloProject:level:'
                withArgs:
                    {projectProxy.
                    2} ]