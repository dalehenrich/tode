accessing
entryNode: oldTDRegistrationDefinitionOrNil topez: topez
  | newEntry |
  (entry isNil or: [ entry projectPath isNil ])
    ifTrue: [ 
      newEntry := self createTemplateProjectEntry: oldTDRegistrationDefinitionOrNil.
      newEntry createProjectEntryNode: '/sys/stone/projects/' topez: topez.
      newEntry
        projectPath: '/sys/stone/projects/';
        projectNodeName: self projectName.
      entry := newEntry ].
  ^ topez lookup: entry projectPath , entry projectNodeName