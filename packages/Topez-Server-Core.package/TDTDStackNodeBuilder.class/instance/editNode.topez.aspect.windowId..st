as yet unclassified
editNode: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  | clientListElement windowLabel |
  anAspect == #'inspect'
    ifTrue: [ 
      ^ super
        edit: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: inWindowId ].
  windowLabel := self object exception == nil
    ifTrue: [ self objectPrintString ]
    ifFalse: [ self object exception description ].
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