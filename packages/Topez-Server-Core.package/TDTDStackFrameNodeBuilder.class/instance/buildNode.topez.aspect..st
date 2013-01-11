as yet unclassified
buildNode: parentNode topez: aTopez aspect: anAspect
  anAspect ~~ #'debug'
    ifTrue: [ ^ super buildNode: parentNode topez: aTopez aspect: anAspect ].
  ^ TDObjectNode new
    name: self object frameIndex asString;
    parent: parentNode;
    topez: aTopez;
    readMe: 'stack frame at index' , self object frameIndex printString;
    basicContents: self object;
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