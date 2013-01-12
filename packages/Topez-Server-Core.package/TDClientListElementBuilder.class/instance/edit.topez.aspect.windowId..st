as yet unclassified
edit: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  | clientListElement |
  clientListElement := self clientListElement
    topez: aTopez;
    aspect: anAspect;
    parentNode: parentNode;
    editorWindowLabel: self editorWindowLabel;
    editorWindowId: inWindowId;
    editorWindowName: self editorWindowName;
    editorWindowLocation: self editorWindowLocation;
    editorAspectSelector: #'activateListEditor';
    yourself.
  ^ aTopez editElement: clientListElement