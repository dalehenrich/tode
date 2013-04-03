as yet unclassified
cmdOAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-o - open method template"

  | def |
  def := TDMethodTemplateDefinition
    className: self theClass name
    isMeta: self object isMeta.
  ^ def
    edit: nil
    topez: listElement topez
    aspect: #'method'
    windowName: #'method'
    windowId: nil