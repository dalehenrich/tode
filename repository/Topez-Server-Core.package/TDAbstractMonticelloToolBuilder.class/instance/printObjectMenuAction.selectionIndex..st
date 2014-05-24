actions
printObjectMenuAction: listElement selectionIndex: selectionIndex
  | target |
  target := selectionIndex = 0
    ifTrue: [ self theList ]
    ifFalse: [ self theList at: selectionIndex ].
  target
    printUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'printer';
        yourself).
  ^ true