tools
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  | clientListElement theWindowLabel theWindowIsClosingBlock |
  self
    theEditorSpec: aTDEditorSpec;
    theWindowName: aTDEditorSpec windowName;
    theWindowLocation: aTDEditorSpec windowLocation.
  clientListElement := self clientListElement.
  aTDEditorSpec selectionIndex ~~ nil
    ifTrue: [ clientListElement selectedIndex: aTDEditorSpec selectionIndex ].
  aTDEditorSpec highlightIndex ~~ nil
    ifTrue: [ clientListElement highlightedIndex: aTDEditorSpec highlightIndex ].
  aTDEditorSpec parentList ~~ nil
    ifTrue: [ clientListElement parentList: aTDEditorSpec parentList ].
  theWindowLabel := aTDEditorSpec windowLabel.
  theWindowLabel ifNil: [ theWindowLabel := self editorWindowLabel ].
  theWindowIsClosingBlock := aTDEditorSpec windowIsClosingBlock.
  theWindowIsClosingBlock
    ifNil: [ theWindowIsClosingBlock := self windowIsClosingBlock ].
  ^ clientListElement
    topez: aTDEditorSpec topez;
    aspect: editorAspect;
    parent: aTDEditorSpec parentObject;
    windowIsClosingBlock: theWindowIsClosingBlock;
    menuActionSpec: self menuActionSpec;
    menuActionBlock: self menuActionBlock;
    editorWindowLabel: theWindowLabel;
    editorWindowId: aTDEditorSpec windowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateListEditor';
    firstList: (self firstList: clientListElement);
    yourself