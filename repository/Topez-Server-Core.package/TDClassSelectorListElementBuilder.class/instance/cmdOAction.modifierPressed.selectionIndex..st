as yet unclassified
cmdOAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-o - open method template"

  | def |
  def := TDMethodTemplateDefinition
    className: self theClass name
    isMeta: self object isMeta.
  ^ def
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'method')
        windowName: #'method';
        yourself)