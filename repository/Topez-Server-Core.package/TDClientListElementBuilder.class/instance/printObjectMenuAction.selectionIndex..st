menu actions
printObjectMenuAction: listElement selectionIndex: selectionIndex
  self object dotSelfObject
    printUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'printer';
        yourself).
  ^ true