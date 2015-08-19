tools
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  | clientElement theWindowLabel theWindowIsClosingBlock |
  self
    theEditorSpec: aTDEditorSpec;
    theWindowName: aTDEditorSpec windowName;
    theWindowLocation: aTDEditorSpec windowLocation.
  clientElement := self clientElement.
  theWindowLabel := aTDEditorSpec windowLabel.
  theWindowLabel ifNil: [ theWindowLabel := self editorWindowLabel ].
  theWindowIsClosingBlock := aTDEditorSpec windowIsClosingBlock.
  theWindowIsClosingBlock
    ifNil: [ theWindowIsClosingBlock := self windowIsClosingBlock ].
  ^ clientElement
    topez: aTDEditorSpec topez;
    aspect: editorAspect;
    windowIsClosingBlock: theWindowIsClosingBlock;
    menuActionSpec: self menuActionSpec;
    menuActionBlock: self menuActionBlock;
    editorWindowLabel: theWindowLabel;
    editorWindowId: aTDEditorSpec windowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    yourself