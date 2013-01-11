as yet unclassified
editContents: parentNode topez: aTopez windowId: inWindowId
  | element |
  element := self contentsElement
    topez: aTopez;
    parentNode: parentNode;
    editorWindowLabel: self objectPrintString;
    editorWindowId: inWindowId;
    editorWindowName: #'inspector';
    editorWindowLocation: #'inspector';
    editorAspectSelector: #'activateListEditor';
    yourself.
  ^ aTopez editElement: element