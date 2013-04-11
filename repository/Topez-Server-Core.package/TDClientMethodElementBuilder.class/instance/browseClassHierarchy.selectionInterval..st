as yet unclassified
browseClassHierarchy: clientSourceElement selectionInterval: selectionInterval
  "CMD-B - browse class hierarchy"

  "find class matching pattern"

  | gsMethod cls |
  gsMethod := self method.
  cls := gsMethod inClass.
  cls
    edit: nil
    topez: clientSourceElement topez
    aspect: #'navigate'
    windowName: #'hierarchy'
    windowId: nil
    windowLocation: nil.
  ^ true