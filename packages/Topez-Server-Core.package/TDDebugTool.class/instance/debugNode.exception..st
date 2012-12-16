as yet unclassified
debugNode: aGsProcess exception: anException
    | node |
    node := TDObjectNode new
        name: 'debug';
        topez: topez;
        readMe: 'frames for: ' , anException description;
        basicContents: anException;
        listBlock: [ :theNode | (1 to: aGsProcess stackDepth) collect: [ :each | each asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    elementName isAllDigits
                        ifFalse: [ absentBlock value ].
                    (self frameNode: elementName asNumber process: aGsProcess)
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node