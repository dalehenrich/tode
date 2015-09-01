menu actions
newMethodTemplateMenuAction: listElement selectionIndex: selectionIndex
  | def protocol |
  (selectionIndex == 0
    or: [ self isAllProtocolSelected: listElement selection: selectionIndex ])
    ifTrue: [ protocol := nil ]
    ifFalse: [ protocol := listElement itemCache at: selectionIndex ].
  def := TDMethodTemplateDefinition
    className: self theClass name
    protocol: protocol methodProtocol
    isMeta: self isMeta.
  ^ def
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'method')
        windowName: #'method';
        yourself)