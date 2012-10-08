metacello
classesInMetacelloProject
    ^ self
        doInSession: [ :sess | 
            sess
                receiverNB: self currentEngine
                performNoDebug: 'classesInMetacelloProject:level:'
                withArgs:
                    {(self currentProject).
                    1} ]