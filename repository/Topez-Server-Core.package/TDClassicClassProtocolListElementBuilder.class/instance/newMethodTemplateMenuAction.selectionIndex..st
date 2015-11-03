menu actions
newMethodTemplateMenuAction: listElement selectionIndex: selectionIndex
  | def methodProtocol |
  (selectionIndex == 0
    or: [ self isAllProtocolSelected: listElement selection: selectionIndex ])
    ifTrue: [ methodProtocol := nil ]
    ifFalse: [ methodProtocol := (listElement itemCache at: selectionIndex) methodProtocol ].
  def := TDMethodTemplateDefinition
    className: self theClass name
    protocol: methodProtocol
    isMeta: self isMeta.
  ^ def
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'method')
        windowName: #'method';
        yourself)