as yet unclassified
indexNode: parentNode index: theIndex
  | node |
  node := TDObjectNode new
    name: self printString;
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>indexNode:';
    basicContents: theIndex;
    listBlock: [ :theNode | 
          #('indexDictionary')
            ,
              (theIndex isRangeEqualityIndex
                ifTrue: [ #('nscRoot' 'btreeRoot' 'lastElementClass') ]
                ifFalse: [ #() ]) , ((1 to: theIndex size) collect: [ :each | each asString ]) ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | childNode |
          childNode := elementName = 'nscRoot'
            ifTrue: [ self nscNode: theNode nsc: (theIndex instVarNamed: elementName) ]
            ifFalse: [ 
              elementName = 'indexDictionary'
                ifTrue: [ self indexDictionaryNode: theNode indexDictionary: (theIndex instVarNamed: elementName) ]
                ifFalse: [ 
                  (theIndex isRangeEqualityIndex and: [ elementName = 'btreeRoot' ])
                    ifTrue: [ self btreeNode: theNode btree: (theIndex instVarNamed: elementName) ]
                    ifFalse: [ 
                      (theIndex isRangeEqualityIndex and: [ elementName = 'lastElementClass' ])
                        ifTrue: [ (theIndex instVarNamed: elementName) asTDObjectNode: theNode topez: theNode topez aspect: #'edit' ]
                        ifFalse: [ 
                          elementName isAllDigits
                            ifFalse: [ absentBlock value ].
                          self pathTermNode: theNode pathTerm: (theIndex at: elementName asNumber) ] ] ] ].
          childNode == nil
            ifTrue: [ childNode := nil asTDObjectNode: theNode topez: theNode topez aspect: #'edit' ].
          childNode
            name: elementName;
            yourself ];
    yourself.
  ^ node