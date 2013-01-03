as yet unclassified
editSource: aTopez windowId: inWindowId
  | clientElement |
  clientElement := self sourceElement
    editorWindowLabel: self printString;
    editorWindowId: inWindowId;
    editorWindowName: #'debugMethod';
    editorWindowLocation: #'method';
    editorAspectSelector: #'activateCodeEditor';
    yourself.
  ^ aTopez editElement: clientElement