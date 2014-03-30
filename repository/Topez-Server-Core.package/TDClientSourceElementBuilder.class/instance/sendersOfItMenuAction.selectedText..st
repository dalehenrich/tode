menu actions - Search
sendersOfItMenuAction: clientSourceElement selectedText: selectedString
  "browse sender <selectedString>"

  | selector defs |
  selector := selectedString findSelector.
  defs := TDMethodDefinition sendersOf: selector.
  defs
    editUsing:
      ((TDEditorSpec
        topez: clientSourceElement topez
        editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        windowLabel: 'Senders of ' , selector;
        yourself).
  ^ true