menu actions
implementorsOfItMenuAction: clientSourceElement selectedText: selectedString
  | selector defs |
  selector := selectedString findSelector.
  defs := TDMethodDefinition implementorsOf: selector.
  defs
    editUsing:
      ((TDEditorSpec
        topez: clientSourceElement topez
        editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        windowLabel: 'Implementors of ' , selector;
        yourself).
  ^ true