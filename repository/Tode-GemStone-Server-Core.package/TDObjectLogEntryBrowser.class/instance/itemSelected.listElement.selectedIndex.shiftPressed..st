tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  | objectLogEntry |
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  objectLogEntry := self objectLogEntries at: index.
  objectLogEntry
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'logEntries')
        windowName: #'inspector';
        yourself).
  ^ self enableMenuItemsFor: objectLogEntry