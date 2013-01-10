*topez-server-core
asTDObjectNode: parentNode topez: aTopez aspect: anAspect
  "not many useful things you can do with a clientForwarder ... without triggering references to client"

  anAspect == #'inspect'
    ifTrue: [ ^ super asTDObjectNode: parentNode topez: aTopez aspect: anAspect ].
  ^ TDTxtLeafNode new
    name: self printString;
    parent: parentNode;
    contents: self;
    yourself