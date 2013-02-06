as yet unclassified
buildClientElement: parentObject topez: aTopez aspect: anAspect selectionIndex: aSelectionIndex windowName: inWindowName windowId: inWindowId windowLocation: windowLocation
  self
    theWindowName: inWindowName;
    theWindowLocation: windowLocation.
  ^ self clientSourceElement
    theObject: self object;
    clientElementOop;
    aspect: anAspect;
    topez: aTopez;
    firstSource: self firstSource;
    getBlock: self getBlock;
    setBlock: self setBlock;
    cmdKeyBlock: self cmdKeyBlock;
    editorWindowLabel: self editorWindowLabel;
    editorWindowId: inWindowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateCodeEditor';
    yourself