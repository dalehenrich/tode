metacello
saveModifiedPackagesForProjectNamed: projectName commitMessage: commitMessage
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'saveModifiedPackagesForProjectNamed:commitMessage:level:'
                withArgs:
                    {projectName.
                    commitMessage.
                    2} ]