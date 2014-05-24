menu actions
setViewBuilderAspectMenuAction: listElement selectionIndex: selectionIndex
  listElement theObject dotSelfObject
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        builderAspect: #'view';
        parentObject: listElement parent;
        highlightIndex: listElement highlightedIndex;
        parentList: listElement parentList;
        windowName: listElement editorWindowName;
        yourself).
  ^ nil