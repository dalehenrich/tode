menu actions
findReferencePathsMenuAction: listElement selectionIndex: selectionIndex
  | gs dict |
  gs := self gemstoneTool: listElement.
  dict := Dictionary new.
  gs
    gsReferencesTo: {(self object dotSelfObject)}
    into: dict
    inMemory: false
    max: 5.
  dict
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'inspect')
        builderAspect: #'view';
        windowLocation: #'debugger';
        windowName: #'referencePaths';
        windowLabel: 'Reference paths for: ' , self object printString;
        yourself).
  ^ true