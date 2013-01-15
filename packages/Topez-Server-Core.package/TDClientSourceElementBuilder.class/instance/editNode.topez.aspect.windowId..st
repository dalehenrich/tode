as yet unclassified
editNode: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  | clientElement |
  clientElement := self clientSourceElement
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
    yourself.
  ^ aTopez editElement: clientElement