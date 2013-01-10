as yet unclassified
editClient: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | clientListElement |
  clientListElement := self clientListElement
    aspect: anAspect;
    parentNode: parentNode;
    editorWindowLabel: self printString;
    editorWindowId: inWindowId;
    editorWindowName: #'inspector';
    editorWindowLocation: #'inspector';
    editorAspectSelector: #'activateListEditor';
    yourself.
  ^ aTopez editElement: clientListElement