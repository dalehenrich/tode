as yet unclassified
frameNode: frameIndex process: aGsProcess
    | node stackFrame |
    stackFrame := TDStackFrame new
        process: aGsProcess;
        frameIndex: frameIndex;
        yourself.
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
    ^ node