menu actions (git)
gitPushProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration gitRepoDirectory gitTool response |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  response := self projectTool projectPush: registration.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ true