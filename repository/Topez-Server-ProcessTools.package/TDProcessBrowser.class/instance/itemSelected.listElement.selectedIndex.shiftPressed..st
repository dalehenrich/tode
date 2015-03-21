tools
itemSelected: miniTool listElement: listElement selectedIndex: selectionIndex shiftPressed: shiftPressed
  | theProcess editSpec |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  theProcess := self _theProcessList at: selectionIndex.
  editSpec := (TDEditorSpec topez: listElement topez editorAspect: #'edit')
    windowName: #'processBrowser';
    windowId: processWindowId;
    yourself.
  [ processWindowId := theProcess printUsing: editSpec ]
    on: Error
    do: [ :ex | theProcess printString editUsing: editSpec ].
  ^ true