as yet unclassified
itemSelected: topez
  "select the method"

  | cl property method |
  cl := Smalltalk classNamed: self className.
  self isMeta
    ifTrue: [ cl := cl class ].
  method := cl compiledMethodAt: self selector.
  method
    edit: nil
    topez: topez
    aspect: #'method'
    windowName: #'method'
    windowId: nil.
  ^ nil