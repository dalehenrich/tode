metacello
classesInMetacelloProject
    self currentProject == nil
        ifTrue: [ self error: 'currentProject must be set' ].
    ^ self classesInMetacelloProject: self currentProject