as yet unclassified
itemSelected: topez
  | cl |
  cl := Smalltalk classNamed: self className.
  cl
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'hierarchy';
        yourself).
  ^ nil