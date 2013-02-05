as yet unclassified
buildClientElement: parentObject topez: aTopez aspect: anAspect selectionIndex: aSelectionIndex windowName: inWindowName windowId: inWindowId windowLocation: windowLocation
  | clientListElement |
  self
    theWindowName: inWindowName;
    theWindowLocation: windowLocation.
  clientListElement := self clientListElement.
  aSelectionIndex ~~ nil
    ifTrue: [ clientListElement selectionIndex: aSelectionIndex ].
  ^ clientListElement
    topez: aTopez;
    aspect: anAspect;
    parent: parentObject;
    windowIsClosingBlock: self windowIsClosingBlock;
    keyboardEventBlock: self keyboardEventBlock;
    cmdKeyCodePoints: self cmdKeyCodePoints;
    editorWindowLabel: self editorWindowLabel;
    editorWindowId: inWindowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateListEditor';
    firstList: (self firstList: clientListElement);
    yourself