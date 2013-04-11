as yet unclassified
itemSelected: topez
  | cl |
  cl := Smalltalk classNamed: self className.
  cl
    edit: nil
    topez: topez
    aspect: #'edit'
    windowName: #'hierarchy'
    windowId: nil.
  ^ nil