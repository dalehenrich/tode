menu actions
toolSentButNotImplemented: listElement selectedIndex: index
  | portTool |
  portTool := self topez toolInstanceFor: 'port'.
  portTool portsentButNotImplemented
    editUsing: (TDEditorSpec topez: listElement topez editorAspect: #'edit').
  ^ true