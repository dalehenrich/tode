accessing
entryNode: topez
  entry := self entry.
  (entry isNil or: [ entry projectPath isNil ])
    ifTrue: [ 
      entry := self createTemplateProjectEntry.
      entry createProjectEntryNode: '/sys/stone/projects/' topez: topez.
      entry
        projectPath: '/sys/stone/projects/';
        projectNodeName: self projectName ].
  ^ topez lookup: entry projectPath , entry projectNodeName