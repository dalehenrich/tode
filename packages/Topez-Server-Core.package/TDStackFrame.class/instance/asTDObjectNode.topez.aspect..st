as yet unclassified
asTDObjectNode: parentNode topez: aTopez aspect: anAspect
  anAspect ~~ #'debug'
    ifTrue: [ ^ super asTDObjectNode: parentNode topez: aTopez aspect: anAspect ].
  ^ TDObjectNode new
    name: self frameIndex asString;
    parent: parentNode;
    topez: aTopez;
    readMe: 'stack frame at index' , self frameIndex printString;
    basicContents: self;
    listBlock: [ :theNode | theNode basicContents elementNodeNames ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          (theNode basicContents
            nodeFor: theNode
            elementName: elementName
            topez: theNode topez
            ifAbsent: absentBlock)
            name: elementName;
            parent: theNode;
            yourself ];
    yourself