as yet unclassified
itemSelected: topez
  | cl |
  cl := Smalltalk classNamed: self className.
  cl
    edit: nil
    topez: topez
    aspect: #'browse'
    windowName: #'hierarchy'
    windowId: nil.
  ^ nil