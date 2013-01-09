as yet unclassified
edit: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | clientListElement windowLabel |
  anAspect == #'inspect'
    ifTrue: [ 
      ^ super
        edit: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: inWindowId ].
  windowLabel := self exception == nil
    ifTrue: [ self printString ]
    ifFalse: [ self exception description ].
  clientListElement := self clientListElement
    topez: aTopez;
    aspect: anAspect;
    parentNode: parentNode;
    editorWindowLabel: windowLabel;
    editorWindowId: inWindowId;
    editorWindowName: #'debugStack';
    editorWindowLocation: #'debugger';
    editorAspectSelector: #'activateListEditor';
    yourself.
  ^ aTopez editElement: clientListElement