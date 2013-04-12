as yet unclassified
browseClassHierarchy: clientSourceElement selectionInterval: selectionInterval
  "CMD-B - browse class hierarchy"

  "find class matching pattern"

  | gsMethod cls |
  gsMethod := self method.
  cls := gsMethod inClass.
  cls
    editUsing:
      ((TDEditorSpec topez: clientSourceElement topez editorAspect: #'navigate')
        windowName: #'hierarchy';
        yourself).
  ^ true