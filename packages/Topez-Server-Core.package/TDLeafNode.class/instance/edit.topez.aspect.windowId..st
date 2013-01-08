as yet unclassified
edit: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | clientElement |
  anAspect == #'inspect'
    ifTrue: [ 
      ^ super
        edit: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: inWindowId ].
  clientElement := self clientElementClass new
    clientElementOop;
    aspect: anAspect;
    firstSource: self elementSource;
    getBlock: [ self elementSource ];
    setBlock: self setBlock;
    editorWindowLabel: self printString;
    editorWindowId: inWindowId;
    editorWindowName: #'editor';
    editorWindowLocation: #'method';
    editorAspectSelector: #'activateCodeEditor';
    yourself.
  ^ aTopez editElement: clientElement