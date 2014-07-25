private
projectRegistrationDefinitionMap
  | map findTool |
  findTool := self topez toolInstanceFor: 'find'.
  map := Dictionary new.
  (findTool findProjectRegistrationDefinitions: '')
    do: [ :reg | map at: reg projectName put: reg ].
  self
    scanHomeDirForProjects: [ :projectEntry | 
      | registration |
      (map at: projectEntry projectName ifAbsent: [  ])
        ifNil: [ 
          | registration |
          registration := projectEntry createProjectListRegistration.
          (projectEntry isLocked and: [ registration isLocked not ])
            ifTrue: [ 
              self projectLock: registration.
              registration := findTool
                findProjectRegistrationExact: projectEntry projectName.
              registration entry: projectEntry ].
          map at: projectEntry projectName put: registration ]
        ifNotNil: [ :registration | 
          (projectEntry isLocked and: [ registration isLocked not ])
            ifTrue: [ 
              | lockedRegistration |
              self projectLock: registration.
              lockedRegistration := findTool
                findProjectRegistrationExact: projectEntry projectName.
              lockedRegistration entry: projectEntry.
              map at: projectEntry projectName put: lockedRegistration ]
            ifFalse: [ registration entry: projectEntry ] ] ].
  ^ map