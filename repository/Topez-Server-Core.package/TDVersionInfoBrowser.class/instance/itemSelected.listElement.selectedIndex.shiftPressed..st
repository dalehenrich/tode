tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | versionInfo |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  versionInfo := self versionInfos at: index.
  versionInfo summary
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'mcVersionInfo';
        yourself).
  ^ true