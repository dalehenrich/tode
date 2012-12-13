as yet unclassified
symbolDictionaryNodeFor: aSymbolDictionary parentNode: parentNode topez: aTopez
    ^ TDPluggableNode new
        name: aSymbolDictionary name asString;
        parent: parentNode;
        readMe: (self symbolDictionaryReadMe: aSymbolDictionary name asString);
        basicContents: aSymbolDictionary;
        renderAttributeBlock: [ :theNode | theNode class directoryTextAttributes ];
        elementExtensionBlock: [ :theNode | theNode class objectExtension ];
        elementRenderAttributeBlock: [ :theNode | theNode class objectTextAttributes ];
        listBlock: [ :theNode | (theNode basicContents associations sort: [ :a :b | a key <= b key ]) collect: [ :assoc | assoc key asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | obj |
                    obj := theNode basicContents at: elementName asSymbol.
                    (obj asTDObjectNode: theNode topez aspect: #'edit')
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself