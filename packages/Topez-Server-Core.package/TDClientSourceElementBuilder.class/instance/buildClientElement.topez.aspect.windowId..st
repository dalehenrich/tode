as yet unclassified
buildClientElement: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  ^ self clientSourceElement
    clientElementOop;
    aspect: anAspect;
    firstSource: self firstSource;
    getBlock: self getBlock;
    setBlock: self setBlock;
    editorWindowLabel: self editorWindowLabel;
    editorWindowId: inWindowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateCodeEditor';
    yourself