as yet unclassified
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  | theWindowLabel theWindowIsClosingBlock |
  self
    theEditorSpec: aTDEditorSpec;
    theWindowName: aTDEditorSpec windowName;
    theWindowLocation: aTDEditorSpec windowLocation.
  theWindowLabel := aTDEditorSpec windowLabel.
  theWindowLabel ifNil: [ theWindowLabel := self editorWindowLabel ].
  theWindowIsClosingBlock := aTDEditorSpec windowIsClosingBlock.
  theWindowIsClosingBlock
    ifNil: [ theWindowIsClosingBlock := self windowIsClosingBlock ].
  ^ self clientSourceElement
    theObject: self object;
    aspect: aTDEditorSpec editorAspect;
    topez: aTDEditorSpec topez;
    firstSource: self firstSource;
    getBlock: self getBlock;
    setBlock: self setBlock;
    menuActionSpec: self menuActionSpec;
    menuActionBlock: self menuActionBlock;
    editorWindowLabel: theWindowLabel;
    editorWindowId: aTDEditorSpec windowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateCodeEditor';
    usePersistentClientElementCache: self usePersistentClientElementCache;
    windowIsClosingBlock: theWindowIsClosingBlock;
    windowBuilder: self;
    yourself