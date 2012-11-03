metacello
diffModifiedPackagesForProjectNamed: projectName
    ^ self
        doInSession: [ :sess | 
            self halt.
            sess
                receiverNB: self currentEngine
                performNoDebug: 'diffModifiedPackagesForProjectNamed:level:'
                withArgs:
                    {projectName.
                    0} ]