*topez-server-core
asTDObjectNode: aTopez aspect: aspect
    ^ TDObjectNode new
        name: self printString;
        topez: aTopez;
        basicContents: self;
        listBlock: [ :theNode | 
                    | indexedSize coll |
                    coll := theNode basicContents class allInstVarNames sorted
                        collect: [ :each | theNode renderNameText: each asString , theNode extension textAttributes: theNode class objectTextAttributes ].
                    indexedSize := (Reflection sizeOf: theNode basicContents) - coll size.
                    coll
                        ,
                            ((1 to: indexedSize)
                                collect: [ :each | theNode renderNameText: each asString , theNode extension textAttributes: theNode class objectTextAttributes ]) ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | obj |
                    obj := elementName isAllDigits
                        ifTrue: [ theNode basicContents at: elementName asNumber ]
                        ifFalse: [ theNode basicContents instVarNamed: elementName ].
                    (obj asTDObjectNode: aTopez aspect: aspect)
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself