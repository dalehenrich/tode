menu actions
newMethodTemplateMenuAction: listElement selectionIndex: selectionIndex
  | def protocol itemAttribute selectedDef |
  selectionIndex == 0
    ifFalse: [ 
      itemAttribute := listElement itemCache at: selectionIndex.
      selectedDef := itemAttribute object.
      protocol := selectedDef methodProtocol ].
  def := TDMethodTemplateDefinition
    className: self theClass name
    protocol: protocol
    isMeta: self object isMeta.
  ^ def
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'method')
        windowName: #'method';
        yourself)