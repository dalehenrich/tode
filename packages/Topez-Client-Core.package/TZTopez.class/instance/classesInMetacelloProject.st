metacello
classesInMetacelloProject
    | projectProxy |
    (projectProxy := self currentProject) == nil
        ifTrue: [ self error: 'currentProject must be set' ].
    ^ self classesInMetacelloProject: projectProxy