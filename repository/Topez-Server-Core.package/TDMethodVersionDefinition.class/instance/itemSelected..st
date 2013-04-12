as yet unclassified
itemSelected: topez
  "select the method"

  self
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'method')
        windowName: #'method';
        yourself).
  ^ nil