menu actions (git)
gitCheckoutMenuAction: listElement selectionIndex: selectionIndex
  | registration gitRepoDirectory gitTool response checkoutArgs |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  gitRepoDirectory := self projectTool gitRepoDirForRegistration: registration.
  checkoutArgs := (GsTextInteraction
    prompt: 'Enter checkout args'
    template: 'branch | -b newBranch commitish | -b newBranch | args') signal.
  checkoutArgs ifNil: [ ^ false ].
  gitTool := self gitTool.
  response := gitTool gitcheckoutIn: gitRepoDirectory with: checkoutArgs.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  ^ #'refreshView'