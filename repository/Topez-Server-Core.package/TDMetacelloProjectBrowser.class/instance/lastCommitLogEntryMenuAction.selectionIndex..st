menu actions
lastCommitLogEntryMenuAction: listElement selectionIndex: selectionIndex
  | registration commitLog |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  commitLog := self projectTool
    projectCommitLogEntries: registration
    commitish: registration versionString
    logLimit: 1.
  commitLog
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'commitLog';
        windowLabel: 'Last Commit log for ' , registration projectName;
        yourself).
  ^ true