as yet unclassified
symbolDictionaryNodeFor: aSymbolDictionary parentNode: parentNode topez: aTopez
    ^ TDPluggableNode new
        name: aSymbolDictionary name asString;
        parent: parentNode;
        readMe: (self symbolDictionaryReadMe: aSymbolDictionary name asString);
        basicContents: aSymbolDictionary;
        listBlock: [ :theNode | 
                    (theNode basicContents associations sort: [ :a :b | a key <= b key ])
                        collect: [ :assoc | 
                            theNode
                                renderNameText: assoc key asString , theNode class objectExtension
                                textAttributes: theNode class objectTextAttributes ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | obj |
                    obj := theNode basicContents at: elementName asSymbol.
                    (obj asTDObjectNode: theNode topez aspect: #'edit')
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself