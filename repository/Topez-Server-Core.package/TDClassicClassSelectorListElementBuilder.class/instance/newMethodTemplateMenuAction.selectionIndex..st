menu actions
newMethodTemplateMenuAction: listElement selectionIndex: selectionIndex
  | def methodProtocol |
  methodProtocol := self object protocol.
  methodProtocol = TDProtocolDefinition allSelectorsProtocol
    ifTrue: [ methodProtocol := nil ].
  def := TDMethodTemplateDefinition
    className: self theClass name
    protocol: methodProtocol
    isMeta: self isMeta.
  ^ def
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'method')
        windowName: #'method';
        yourself)