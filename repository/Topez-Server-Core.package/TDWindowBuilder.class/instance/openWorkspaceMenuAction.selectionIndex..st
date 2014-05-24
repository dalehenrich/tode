menu actions
openWorkspaceMenuAction: listElement selectionIndex: selectionIndex
  | theObject |
  theObject := self object.
  ^ ''
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'workspace')
        windowLabel: 'Workspace on ' , theObject printString)
    objectBlock: [ theObject ]