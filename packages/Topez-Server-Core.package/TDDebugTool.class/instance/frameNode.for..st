as yet unclassified
frameNode: frameIndex for: aTDStack
    | node stackFrame |
    self nodes at: frameIndex ifPresent: [ :aNode | ^ aNode ].
    stackFrame := aTDStack frames at: frameIndex.
    node := TDObjectNode new
        name: frameIndex asString;
        topez: topez;
        readMe: 'stack frame at index' , frameIndex printString;
        basicContents: stackFrame;
        listBlock: [ :theNode | theNode basicContents elementNodeNames ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    (theNode basicContents nodeFor: elementName topez: theNode topez ifAbsent: absentBlock)
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    self nodes at: frameIndex put: node.
    ^ node