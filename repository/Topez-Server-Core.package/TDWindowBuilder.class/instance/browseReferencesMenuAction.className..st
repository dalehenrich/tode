menu actions
browseReferencesMenuAction: clientElement className: className
  "browse references <className>"

  | block |
  block := [ TDMethodDefinition referencesTo: className isMeta: false in: nil ].
  block value
    editUsing:
      ((TDEditorSpec topez: clientElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        windowLabel: 'References to: ' , className;
        objectBlock: block;
        yourself).
  ^ true