as yet unclassified
cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-B - browse class hierarchy"

  | cls |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  cls
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'navigate')
        parentObject: listElement parent;
        windowName: #'hierarchy';
        yourself).
  ^ true