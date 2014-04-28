accessing
openWorkspaceForClientElement: aClientElement
  | theObject |
  theObject := aClientElement theObject.
  ''
    editUsing:
      ((TDEditorSpec topez: self editorAspect: #'workspace')
        windowLabel: 'Workspace on ' , theObject printString)
    objectBlock: [ theObject ]