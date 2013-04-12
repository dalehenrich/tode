as yet unclassified
cmdPAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-p - open print window from list"

  self object dotSelfObject
    printUsing: (TDEditorSpec topez: listElement topez editorAspect: #'edit').
  ^ true