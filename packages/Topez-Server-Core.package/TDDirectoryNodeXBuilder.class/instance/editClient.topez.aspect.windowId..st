as yet unclassified
editClient: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | clientListElement |
  clientListElement := self clientListElement
    aspect: anAspect;
    topez: aTopez;
    parentNode: parentNode;
    editorWindowLabel: self objectPrintString;
    editorWindowId: inWindowId;
    editorWindowName: #'inspector';
    editorWindowLocation: #'inspector';
    editorAspectSelector: #'activateListEditor';
    yourself.
  ^ aTopez editElement: clientListElement