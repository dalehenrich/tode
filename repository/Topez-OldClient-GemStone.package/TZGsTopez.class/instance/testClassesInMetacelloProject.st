metacello
testClassesInMetacelloProject
    self currentProject == nil
        ifTrue: [ self error: 'currentProject must be set' ].
    ^ self testClassesInMetacelloProject: self currentProject