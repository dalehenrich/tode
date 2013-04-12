as yet unclassified
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  self
    theWindowName: aTDEditorSpec windowName;
    theWindowLocation: aTDEditorSpec windowLocation.
  ^ self clientSourceElement
    theObject: self object;
    clientElementOop;
    aspect: aTDEditorSpec editorAspect;
    topez: aTDEditorSpec topez;
    firstSource: self firstSource;
    getBlock: self getBlock;
    setBlock: self setBlock;
    cmdKeyBlock: self cmdKeyBlock;
    editorWindowLabel: self editorWindowLabel;
    editorWindowId: aTDEditorSpec windowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateCodeEditor';
    windowBuilder: self;
    yourself