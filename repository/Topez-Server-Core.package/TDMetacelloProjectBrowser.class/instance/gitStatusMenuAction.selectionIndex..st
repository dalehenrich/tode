menu actions (git)
gitStatusMenuAction: listElement selectionIndex: selectionIndex
  | registration status report commitLog |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  report := '======== Modifications ========' copy.
  status := self projectTool projectStatus: registration args: '--porcelain'.
  commitLog := self projectTool
    projectCommitLogEntries: registration
    commitish: registration versionString
    logLimit: 1.
  report
    add: String lf;
    add: status;
    add: String lf;
    add: '======== Last commit ========';
    add: String lf;
    add: commitLog.
  report
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'commitLog';
        windowLabel: 'Status for ' , registration projectName;
        yourself).
  ^ true