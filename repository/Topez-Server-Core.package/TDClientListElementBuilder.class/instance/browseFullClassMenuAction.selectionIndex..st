menu actions
browseFullClassMenuAction: listElement selectionIndex: selectionIndex
  | cls |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  cls
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'hierarchyList')
        parentObject: listElement parent;
        windowName: #'hierarchy';
        yourself).
  ^ true