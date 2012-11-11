metacello
diffModifiedPackagesForProjectNamed: projectName
    ^ self
        doInSession: [ :sess | 
             sess
                receiverNB: self currentEngine
                performNoDebug: 'diffModifiedPackagesForProjectNamed:level:'
                withArgs:
                    {projectName.
                    0} ]