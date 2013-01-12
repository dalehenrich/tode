as yet unclassified
asTDObjectNode: parentNode topez: aTopez aspect: anAspect
  anAspect ~~ #'debug'
    ifTrue: [ ^ super asTDObjectNode: parentNode topez: aTopez aspect: anAspect ].
  ^ TDObjectNode new
    name: 'debug';
    parent: parentNode;
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
          (theNode basicContents frameNode: theNode index: elementName asNumber topez: theNode topez)
            parent: theNode;
            name: elementName;
            yourself ];
    yourself