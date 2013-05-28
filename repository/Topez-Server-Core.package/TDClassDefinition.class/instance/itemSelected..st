as yet unclassified
itemSelected: topez
  | cl |
  cl := Smalltalk classNamed: self theClassName.
  cl
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'hierarchy';
        yourself).
  ^ nil