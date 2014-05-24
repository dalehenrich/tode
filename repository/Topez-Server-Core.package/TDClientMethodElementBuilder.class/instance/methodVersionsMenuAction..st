menu actions
methodVersionsMenuAction: sourceElement
  | defs def |
  def := self methodDefinition.
  defs := def versionsOf.
  defs
    editUsing:
      ((TDEditorSpec topez: sourceElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        windowLabel: 'Versions of: ' , def label;
        yourself).
  ^ true