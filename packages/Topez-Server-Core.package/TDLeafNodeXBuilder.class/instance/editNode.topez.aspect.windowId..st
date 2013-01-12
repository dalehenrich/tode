as yet unclassified
editNode: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | clientElement |
  anAspect == #'inspect'
    ifTrue: [ 
      ^ super
        editNode: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: inWindowId ].
  clientElement := self object clientElementClass new
    clientElementOop;
    aspect: anAspect;
    firstSource: self object elementSource;
    getBlock: [ self object elementSource ];
    setBlock: self object setBlock;
    editorWindowLabel: self objectPrintString;
    editorWindowId: inWindowId;
    editorWindowName: #'editor';
    editorWindowLocation: #'method';
    editorAspectSelector: #'activateCodeEditor';
    yourself.
  ^ aTopez editElement: clientElement