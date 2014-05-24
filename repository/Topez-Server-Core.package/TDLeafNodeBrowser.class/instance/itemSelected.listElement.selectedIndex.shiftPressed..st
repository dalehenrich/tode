tools
itemSelected: miniTool listElement: listElement selectedIndex: index shiftPressed: shiftPressed
  theMiniTool := miniTool.
  index = 0
    ifTrue: [ ^ false ].
  self topez
    setFindText: self messagePattern
    isRegex: self messagePatternIsRegex.
  (self leafNodes at: index)
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'leafNode';
        yourself).
  ^ true