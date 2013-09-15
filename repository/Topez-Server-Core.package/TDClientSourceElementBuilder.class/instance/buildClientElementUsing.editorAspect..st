as yet unclassified
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  | theWindowLabel |
  self
    theEditorSpec: aTDEditorSpec;
    theWindowName: aTDEditorSpec windowName;
    theWindowLocation: aTDEditorSpec windowLocation.
  theWindowLabel := aTDEditorSpec windowLabel.
  theWindowLabel ifNil: [ theWindowLabel := self editorWindowLabel ].
  ^ self clientSourceElement
    theObject: self object;
    aspect: aTDEditorSpec editorAspect;
    topez: aTDEditorSpec topez;
    firstSource: self firstSource;
    getBlock: self getBlock;
    setBlock: self setBlock;
    cmdKeyBlock: self cmdKeyBlock;
    editorWindowLabel: theWindowLabel;
    editorWindowId: aTDEditorSpec windowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateCodeEditor';
    windowBuilder: self;
    yourself