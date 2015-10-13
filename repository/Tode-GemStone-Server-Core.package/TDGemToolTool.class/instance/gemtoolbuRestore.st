bu
gemtoolbuRestore
  | buTool entries fileNames fileName backupPath |
  buTool := self topez toolInstanceFor: 'bu'.
  entries := buTool buEntries.
  fileNames := entries collect: [ :each | each name ].
  fileName := (GsChoiceInteraction
    prompt: 'Choose restore file:'
    labels: fileNames
    values: fileNames) signal.
  fileName == nil
    ifTrue: [ ^ false ].
  backupPath := buTool resolveBackupPath: fileName.
  buTool buRestore: backupPath.
  ^ true