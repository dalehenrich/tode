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
        ifNil: [ map at: projectEntry projectName put: projectEntry createProjectListRegistration ]
        ifNotNil: [ :registration | registration entry: projectEntry ] ].
  ^ map