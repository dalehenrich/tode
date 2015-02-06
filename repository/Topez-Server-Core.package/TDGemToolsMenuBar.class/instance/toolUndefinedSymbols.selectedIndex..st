menu actions
toolUndefinedSymbols: listElement selectedIndex: index
  | portTool |
  portTool := self topez toolInstanceFor: 'port'.
  portTool portundefinedSymbols
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        builderAspect: #'view';
        yourself).
  ^ true