as yet unclassified
browseClassHierarchy: clientSourceElement selectionInterval: selectionInterval
  "CMD-B - browse class hierarchy"

  "find class matching pattern"

  | gsMethod cls |
  gsMethod := self method.
  cls := gsMethod inClass.
  (self browseTool: clientSourceElement)
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ true