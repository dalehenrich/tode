as yet unclassified
indexNode: theIndex
  | node |
  node := TDObjectNode new
    name: self printString;
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
            ifTrue: [ self nscNode: (theIndex instVarNamed: elementName) ]
            ifFalse: [ 
              elementName = 'indexDictionary'
                ifTrue: [ self indexDictionaryNode: (theIndex instVarNamed: elementName) ]
                ifFalse: [ 
                  (theIndex isRangeEqualityIndex and: [ elementName = 'btreeRoot' ])
                    ifTrue: [ self btreeNode: (theIndex instVarNamed: elementName) ]
                    ifFalse: [ 
                      (theIndex isRangeEqualityIndex and: [ elementName = 'lastElementClass' ])
                        ifTrue: [ (theIndex instVarNamed: elementName) asTDObjectNode: self topez aspect: #'edit' ]
                        ifFalse: [ 
                          elementName isAllDigits
                            ifFalse: [ absentBlock value ].
                          self pathTermNode: (theIndex at: elementName asNumber) ] ] ] ].
          childNode == nil
            ifTrue: [ childNode := nil asTDObjectNode: self topez aspect: #'edit' ].
          childNode
            parent: theNode;
            name: elementName;
            yourself ];
    yourself.
  ^ node