as yet unclassified
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  | clientListElement |
  self
    theWindowName: aTDEditorSpec windowName;
    theWindowLocation: aTDEditorSpec windowLocation.
  clientListElement := self clientListElement.
  aTDEditorSpec selectionIndex ~~ nil
    ifTrue: [ clientListElement selectedIndex: aTDEditorSpec selectionIndex ].
  aTDEditorSpec highlightIndex ~~ nil
    ifTrue: [ clientListElement highlightedIndex: aTDEditorSpec highlightIndex ].
  aTDEditorSpec parentListIndex ~~ nil
    ifTrue: [ clientListElement parentListIndex: aTDEditorSpec parentListIndex ].
  ^ clientListElement
    topez: aTDEditorSpec topez;
    aspect: editorAspect;
    parent: aTDEditorSpec parentObject;
    windowIsClosingBlock: self windowIsClosingBlock;
    keyboardEventBlock: self keyboardEventBlock;
    cmdKeyCodePoints: self cmdKeyCodePoints;
    editorWindowLabel: self editorWindowLabel;
    editorWindowId: aTDEditorSpec windowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateListEditor';
    firstList: (self firstList: clientListElement);
    yourself