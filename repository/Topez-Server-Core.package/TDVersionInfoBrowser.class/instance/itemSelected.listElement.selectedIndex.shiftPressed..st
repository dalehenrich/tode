tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | versionInfo |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  versionInfo := self versionInfos at: index.
  versionInfoSummaryWindowId := versionInfo summary
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'mcVersionInfo';
        windowId: versionInfoSummaryWindowId;
        windowIsClosingBlock: [ :ignoredListElement | self versionSummaryIsClosing ];
        yourself).
  ^ true