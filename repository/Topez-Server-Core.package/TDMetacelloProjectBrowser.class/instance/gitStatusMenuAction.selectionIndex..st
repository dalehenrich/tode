menu actions
gitStatusMenuAction: listElement selectionIndex: selectionIndex
  | registration status commitLog |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  status := self projectTool projectStatus: registration.
  commitLog := self projectTool
    projectCommitLogEntries: registration
    commitish: registration versionString
    logLimit: 1.
  status
    add: String lf;
    add: '======== Last commit ========';
    add: String lf;
    add: commitLog.
  status
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'commitLog';
        windowLabel: 'Status for ' , registration projectName;
        yourself).
  ^ true