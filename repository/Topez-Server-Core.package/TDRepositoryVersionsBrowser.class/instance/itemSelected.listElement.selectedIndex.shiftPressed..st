tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | version |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  version := (self versions at: index) version.
  versionInfoSummaryWindowId := version summary
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'mcVersionInfo';
        windowId: versionInfoSummaryWindowId;
        windowIsClosingBlock: [ :ignoredListElement | self versionSummaryIsClosing ];
        yourself).
  ^ true