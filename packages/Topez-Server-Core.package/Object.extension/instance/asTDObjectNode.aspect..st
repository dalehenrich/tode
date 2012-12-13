*topez-server-core
asTDObjectNode: aTopez aspect: aspect
    ^ TDObjectNode new
        name: self printString;
        topez: aTopez;
        basicContents: self;
        listBlock: [ :theNode | 
                    | indexedSize coll |
                    coll := theNode basicContents class allInstVarNames sorted.
                    indexedSize := (Reflection sizeOf: theNode basicContents) - coll size.
                    coll , ((1 to: indexedSize) collect: [ :each | each asString ]) ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | obj |
                    obj := elementName isAllDigits
                        ifTrue: [ theNode basicContents _at: elementName asNumber ]
                        ifFalse: [ theNode basicContents instVarNamed: elementName ].
                    (obj asTDObjectNode: theNode topez aspect: aspect)
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself