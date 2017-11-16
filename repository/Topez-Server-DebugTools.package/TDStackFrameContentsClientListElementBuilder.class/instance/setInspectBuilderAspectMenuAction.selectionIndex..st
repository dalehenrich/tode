menu actions
setInspectBuilderAspectMenuAction: listElement selectionIndex: selectionIndex
  listElement theObject
    editUsing: ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        builderAspect: #'inspect';
        parentObject: listElement theObject;
        highlightIndex: listElement highlightedIndex;
        parentList: listElement parentList;
        windowName: listElement editorWindowName;
        yourself).
  ^ nil