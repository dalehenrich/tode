as yet unclassified
asTDObjectNode: aTopez aspect: anAspect
  anAspect ~~ #'debug'
    ifTrue: [ ^ super asTDObjectNode: aTopez aspect: anAspect ].
  ^ TDObjectNode new
    name: self frameIndex asString;
    topez: aTopez;
    readMe: 'stack frame at index' , self frameIndex printString;
    basicContents: self;
    listBlock: [ :theNode | theNode basicContents elementNodeNames ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          (theNode basicContents nodeFor: elementName topez: theNode topez ifAbsent: absentBlock)
            name: elementName;
            parent: theNode;
            yourself ];
    yourself