as yet unclassified
itemSelected: topez
  "select the method"

  | method |
  method := self method.
  TDMethodDefinition selectMethod: method topez: topez.
  self
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'method')
        windowName: #'method';
        yourself).
  ^ nil