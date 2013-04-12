as yet unclassified
itemSelected: topez
  "select the class definition and display in the method pane"

  self
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'method')
        windowName: #'method';
        yourself).
  ^ nil