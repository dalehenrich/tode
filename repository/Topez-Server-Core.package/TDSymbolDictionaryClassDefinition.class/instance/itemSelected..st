accessing
itemSelected: topez
  self
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'symbolDictionaryHierarchyList')
        windowName: #'hierarchy';
        yourself).
  ^ nil