private
resolveProjectRegistrationReference: projectName
  ^ (projectName beginsWith: '@')
    ifTrue: [ 
      | entry registration findTool map |
      entry := self resolveAtPathReference: projectName.
      findTool := self topez toolInstanceFor: 'find'.
      map := Dictionary new.
      (findTool findProjectRegistrationDefinitions: '')
        do: [ :reg | map at: reg projectName put: reg ].
      registration := map
        at: entry projectName
        ifAbsent: [ ^ entry createProjectListRegistration ].
      registration entry: entry.
      ^ registration ]
    ifFalse: [ self projectRegistrationFor: projectName ]