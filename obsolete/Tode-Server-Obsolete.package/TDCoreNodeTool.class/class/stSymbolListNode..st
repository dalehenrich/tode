as yet unclassified
stSymbolListNode: aTopez
  <topezNode: 'symbolList'>
  | node directory |
  node := aTopez ensureChildrenExistIn: '/st'.
  node
    addChildNode:
      (TDPluggableNode new
        name: 'symbolList';
        readMe: self symbolListReadMe;
        basicContents: [ :selector :symbolDictionaryName | 
              | user symbolList |
              user := GsCurrentSession currentSession userProfile.
              symbolList := user symbolList.
              selector == #'list'
                ifTrue: [ symbolList ]
                ifFalse: [ 
                  "selector == #'symbolList'"
                  symbolList
                    detect: [ :dict | dict name == symbolDictionaryName asSymbol ] ] ];
        elementRenderAttributeBlock: [ :theNode :elementName | theNode class directoryTextAttributes ];
        listBlock: [ :theNode | 
              (theNode basicContents value: #'list' value: nil)
                collect: [ :dict | dict name asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
              | dict |
              dict := theNode basicContents
                value: #'symbolList'
                value: elementName.
              self
                symbolDictionaryNodeFor: dict
                parentNode: theNode
                topez: aTopez ];
        yourself)