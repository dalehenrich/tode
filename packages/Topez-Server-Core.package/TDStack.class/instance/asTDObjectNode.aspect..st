as yet unclassified
asTDObjectNode: aTopez aspect: anAspect
  anAspect ~~ #'debug'
    ifTrue: [ ^ super asTDObjectNode: aTopez aspect: anAspect ].
  ^ TDObjectNode new
    name: 'debug';
    topez: aTopez;
    readMe: 'debugger for: ' , self printString;
    basicContents: self;
    elementExtensionBlock: [ :theNode :elementName | 
          theNode basicContents currentFrame frameIndex asString = elementName
            ifTrue: [ '==>' , theNode class objectExtension ]
            ifFalse: [ theNode class objectExtension ] ];
    elementRenderAttributeBlock: [ :theNode :elementName | 
          theNode basicContents currentFrame frameIndex asString = elementName
            ifTrue: [ 
              {(TextColor color: Color red).
              (TextEmphasis bold)} ]
            ifFalse: [ theNode class objectTextAttributes ] ];
    listBlock: [ :theNode | theNode basicContents frames collect: [ :frame | frame frameIndex asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          (theNode basicContents frameNode: elementName asNumber topez: theNode topez)
            parent: theNode;
            name: elementName;
            yourself ];
    yourself