menu actions
commentClassMenuAction: listElement selectionIndex: selectionIndex
  | cls |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  cls
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'classComment')
        windowLabel: 'Class Comment for ' , cls name asString;
        yourself).
  ^ true