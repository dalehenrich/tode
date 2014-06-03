menu actions
methodVersionsMenuAction: sourceElement
  | block def |
  def := self methodDefinition.
  block := [ def versionsOf ].
  block value
    editUsing:
      ((TDEditorSpec topez: sourceElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        windowLabel: 'Versions of: ' , def label;
        objectBlock: block;
        yourself).
  ^ true