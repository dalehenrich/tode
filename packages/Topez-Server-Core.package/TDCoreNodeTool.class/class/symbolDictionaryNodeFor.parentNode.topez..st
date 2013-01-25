as yet unclassified
symbolDictionaryNodeFor: aSymbolDictionary parentNode: parentNode topez: aTopez
  ^ TDPluggableNode new
    name: aSymbolDictionary name asString;
    parent: parentNode;
    readMe: (self symbolDictionaryReadMe: aSymbolDictionary name asString);
    basicContents: aSymbolDictionary;
    renderAttributeBlock: [ :theNode | theNode class directoryTextAttributes ];
    elementExtensionBlock: [ :theNode :elementName | theNode class objectExtension ];
    elementRenderAttributeBlock: [ :theNode :elementName | theNode class objectTextAttributes ];
    listBlock: [ :theNode | (theNode basicContents associations sort: [ :a :b | a key <= b key ]) collect: [ :assoc | assoc key asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | obj |
          obj := theNode basicContents at: elementName asSymbol.
          (obj asTDObjectNode: theNode topez: theNode topez aspect: #'view')
            name: elementName;
            yourself ];
    yourself