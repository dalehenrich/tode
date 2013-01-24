as yet unclassified
buildClientElement: parentObject topez: aTopez aspect: anAspect windowId: inWindowId
  | clientListElement |
  ^ (clientListElement := self clientListElement)
    topez: aTopez;
    aspect: anAspect;
    parent: parentObject;
    editorWindowLabel: self editorWindowLabel;
    editorWindowId: inWindowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateListEditor';
    firstList: (self firstList: clientListElement);
    yourself