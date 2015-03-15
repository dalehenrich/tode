accessing
entryNode: oldTDRegistrationDefinitionOrNil projectPath: projectPath topez: topez
  | newEntry |
  (entry isNil or: [ entry projectPath isNil ])
    ifTrue: [ 
      newEntry := self createTemplateProjectEntry: oldTDRegistrationDefinitionOrNil.
      newEntry createProjectEntryNode: projectPath topez: topez.
      newEntry
        projectPath: projectPath;
        projectNodeName: self projectName.
      entry := newEntry ].
  ^ topez lookup: entry projectPath , entry projectNodeName