as yet unclassified
edit: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | clientListElement |
  anAspect == #'inspect'
    ifTrue: [ 
      ^ super
        edit: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: inWindowId ].
  clientListElement := self clientListElement
    topez: aTopez;
    aspect: anAspect;
    parentNode: parentNode;
    editorWindowLabel: self exception description;
    editorWindowId: inWindowId;
    editorWindowName: #'debugStack';
    editorWindowLocation: #'debugger';
    editorAspectSelector: #'activateListEditor';
    yourself.
  ^ aTopez editElement: clientListElement