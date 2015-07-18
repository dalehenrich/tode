menu actions
findReferencesInMemoryMenuAction: listElement selectionIndex: selectionIndex
  | gs dict |
  gs := self gemstoneTool: listElement.
  dict := Dictionary new.
  gs
    gsReferencesTo: {(self object)}
    into: dict
    inMemory: true
    max: 5.
  dict
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'inspect')
        builderAspect: #'view';
        windowLocation: #'debugger';
        windowName: #'references';
        windowLabel: 'In memory references to: ' , self object printString;
        yourself).
  ^ true