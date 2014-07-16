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
            ifTrue: [ self projectLock: registration ].
          map at: projectEntry projectName put: registration ]
        ifNotNil: [ :registration | 
          registration entry: projectEntry.
          (projectEntry isLocked and: [ registration isLocked not ])
            ifTrue: [ self projectLock: registration ] ] ].
  ^ map