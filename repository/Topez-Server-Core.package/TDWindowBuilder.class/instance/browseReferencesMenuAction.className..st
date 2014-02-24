menu actions
browseReferencesMenuAction: clientElement className: className
  | defs |
  defs := TDMethodDefinition
    referencesTo: className
    isMeta: false isMeta
    in: nil.
  defs
    editUsing:
      ((TDEditorSpec topez: clientElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        yourself).
  ^ true