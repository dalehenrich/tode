menu actions (git)
gitPullProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration response |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  response := self projectTool projectPull: registration.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ #'refreshView'