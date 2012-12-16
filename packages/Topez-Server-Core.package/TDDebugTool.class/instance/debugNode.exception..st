as yet unclassified
debugNode: aGsProcess exception: anException
    | node namedElements |
    namedElements := #('exception' 'process').
    node := TDObjectNode new
        name: 'debug';
        topez: topez;
        readMe: 'frames for: ' , anException description;
        basicContents: aGsProcess;
        listBlock: [ :theNode | namedElements , ((1 to: aGsProcess stackDepth) collect: [ :each | each asString ]) ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    (elementName = 'exception'
                        ifTrue: [ anException asTDObjectNode: topez aspect: #'edit' ]
                        ifFalse: [ 
                            elementName = 'process'
                                ifTrue: [ aGsProcess asTDObjectNode: topez aspect: #'edit' ]
                                ifFalse: [ 
                                    elementName isAllDigits
                                        ifFalse: [ ^ absentBlock value ].
                                    self frameNode: elementName asNumber process: aGsProcess ] ])
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node