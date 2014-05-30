menu actions (git)
gitFetchMenuAction: listElement selectionIndex: selectionIndex
  | registration gitRepoDirectory gitTool response fetchArgs |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  gitRepoDirectory := self projectTool gitRepoDirForRegistration: registration.
  fetchArgs := (GsTextInteraction
    prompt: 'Enter fetch args'
    template: '--all | args') signal.
  fetchArgs ifNil: [ ^ false ].
  gitTool := self gitTool.
  response := gitTool gitfetchIn: gitRepoDirectory with: fetchArgs.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ #'refreshView'