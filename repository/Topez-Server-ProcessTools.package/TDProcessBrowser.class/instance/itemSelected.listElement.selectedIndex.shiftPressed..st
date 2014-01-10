tools
itemSelected: miniTool listElement: listElement selectedIndex: selectionIndex shiftPressed: shiftPressed
  | theProcess |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  theProcess := self _theProcessList at: selectionIndex.
  processWindowId := theProcess
    printUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'edit')
        windowName: #'processBrowser';
        windowId: processWindowId;
        yourself).
  ^ true