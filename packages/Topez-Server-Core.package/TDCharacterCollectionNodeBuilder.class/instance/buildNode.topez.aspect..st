as yet unclassified
buildNode: parentNode topez: aTopez aspect: anAspect
  anAspect == #'inspect'
    ifTrue: [ ^ super buildNode: parentNode topez: aTopez aspect: anAspect ].
  ^ TDTxtLeafNode new
    name: self objectPrintString;
    parent: parentNode;
    contents: self object;
    yourself