menu actions
repositoryMakeBackup: listElement selectedIndex: index
  | buTool entries fileNames newChoice fileName backupPath |
  buTool := self topez toolInstanceFor: 'bu'.
  entries := buTool buEntries.
  newChoice := 'Choose new file'.
  fileNames := (entries collect: [ :each | each name ]) , {newChoice}.
  fileName := (GsChoiceInteraction
    prompt: 'Choose a file'
    labels: fileNames
    values: fileNames
    lines: {(entries size)}) signal.
  fileName == nil
    ifTrue: [ ^ false ].
  fileName = newChoice
    ifTrue: [ 
      fileName := (GsTextInteraction
        prompt: 'New backup file name:'
        template: 'backup.dbf') signal ].
  backupPath := buTool resolveBackupPath: fileName.
  buTool buBackup: backupPath.
  ^ true