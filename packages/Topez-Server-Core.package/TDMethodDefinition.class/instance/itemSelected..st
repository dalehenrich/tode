as yet unclassified
itemSelected: topez
  "select the method"

  | method |
  method := self method.
  TDMethodDefinition selectMethod: method topez: topez.
  method
    edit: nil
    topez: topez
    aspect: #'method'
    windowName: #'method'
    windowId: nil.
  ^ nil