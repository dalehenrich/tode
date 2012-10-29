metacello
classNamesInMetacelloProject: aProjectName
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'classNamesInMetacelloProject:level:'
                withArgs:
                    {aProjectName.
                    2} ]