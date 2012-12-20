as yet unclassified
debugNode: aGsProcess exception: anException
    | node stack |
    stack := TDStack new
        process: aGsProcess;
        exception: anException;
        yourself.
    node := TDObjectNode new
        name: 'debug';
        topez: topez;
        readMe: 'debugger for: ' , stack printString;
        basicContents: stack;
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
                    (self frameNode: elementName asNumber for: stack)
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node