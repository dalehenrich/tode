menu actions
browseReferencesMenuAction: clientElement to: aVariableOrClassName inClass: aClass
  "browse references <className>"

  | defs |
  defs := TDMethodDefinition
    referencesTo: aVariableOrClassName
    isMeta: aClass isMeta
    in: aClass.
  defs
    editUsing:
      ((TDEditorSpec topez: clientElement topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        windowLabel:
            'References to: ' , aVariableOrClassName , ' in ' , aClass name asString;
        yourself).
  ^ true