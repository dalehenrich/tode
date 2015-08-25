menu actions
newMethodTemplateMenuAction: listElement selectionIndex: selectionIndex
  | def protocol protocolDef selectedDef |
  selectionIndex == 0
    ifFalse: [ 
      protocolDef := listElement itemCache at: selectionIndex.
      selectedDef := protocolDef.
      protocol := selectedDef methodProtocol ].
  def := TDMethodTemplateDefinition
    className: self theClass name
    protocol: protocol
    isMeta: self isMeta.
  ^ def
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'method')
        windowName: #'method';
        yourself)