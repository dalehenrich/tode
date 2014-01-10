actions
printObjectMenuAction: listElement selectionIndex: selectionIndex
  | theProcess |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  theProcess := self _theProcessList at: selectionIndex.
  theProcess
    printUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'printer';
        yourself).
  ^ true