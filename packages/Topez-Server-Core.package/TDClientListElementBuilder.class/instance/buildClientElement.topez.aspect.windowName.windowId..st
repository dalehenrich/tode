as yet unclassified
buildClientElement: parentObject topez: aTopez aspect: anAspect windowName: inWindowName windowId: inWindowId
  | clientListElement |
  self theWindowName: inWindowName.
  ^ (clientListElement := self clientListElement)
    topez: aTopez;
    aspect: anAspect;
    parent: parentObject;
    editorWindowLabel: self editorWindowLabel , ' {' , anAspect asString , '}';
    editorWindowId: inWindowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateListEditor';
    firstList: (self firstList: clientListElement);
    yourself