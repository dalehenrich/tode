metacello
classesInMetacelloProject
    self currentProject == nil
        ifTrue: [ self error: 'currentProject must be set' ].
    ^ self doInSession: [ :sess | sess classesInMetacelloProject: self currentProject ]