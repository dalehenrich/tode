accessing
entryNode: oldTDRegistrationDefinitionOrNil topez: topez
  entry := self entry.
  (entry isNil or: [ entry projectPath isNil ])
    ifTrue: [ 
      entry := self createTemplateProjectEntry: oldTDRegistrationDefinitionOrNil.
      entry createProjectEntryNode: '/sys/stone/projects/' topez: topez.
      entry
        projectPath: '/sys/stone/projects/';
        projectNodeName: self projectName ].
  ^ topez lookup: entry projectPath , entry projectNodeName