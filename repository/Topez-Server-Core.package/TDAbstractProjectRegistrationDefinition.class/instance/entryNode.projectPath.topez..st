accessing
entryNode: oldTDRegistrationDefinitionOrNil projectPath: projectPath topez: topez
  | newEntry |
  (entry isNil or: [ entry projectPath isNil ])
    ifTrue: [ 
      newEntry := self createTemplateProjectEntry: oldTDRegistrationDefinitionOrNil.
      newEntry createProjectEntryInNode: projectPath topez: topez.
      newEntry projectPath: projectPath.
      entry := newEntry ].
  ^ topez lookup: entry projectPath , entry projectNodeName