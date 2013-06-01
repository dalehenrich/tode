as yet unclassified
itemSelected: topez
  | cl |
  cl := Smalltalk classNamed: self theClassName.
  cl
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'hierarchyList')
        windowName: #'hierarchy';
        yourself).
  ^ nil