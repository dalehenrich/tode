as yet unclassified
cmdPAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-p - open print window from list"

  self object
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        builderAspect: #'view';
        windowLocation: #'method';
        yourself).
  ^ true