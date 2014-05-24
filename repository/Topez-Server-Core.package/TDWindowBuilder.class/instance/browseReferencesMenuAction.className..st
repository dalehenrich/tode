menu actions
browseReferencesMenuAction: clientElement className: className
  "browse references <className>"

  | defs |
  defs := TDMethodDefinition
    referencesTo: className
    isMeta: false isMeta
    in: nil.
  defs
    editUsing:
      ((TDEditorSpec topez: clientElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        windowLabel: 'References to: ' , className;
        yourself).
  ^ true