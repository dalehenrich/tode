as yet unclassified
pathTermNode: parentNode pathTerm: pathTerm
  | node ivNames indexNameMap |
  ivNames := #('name' 'updateBtree' 'updateDict' 'children' 'offset' 'needsDepList').
  indexNameMap := Dictionary new.
  1 to: pathTerm size do: [ :index | 
    | theIndex indexName |
    theIndex := pathTerm at: index.
    indexName := index printString.
    indexNameMap at: indexName put: theIndex ].
  node := TDObjectNode new
    name: pathTerm name;
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>pathTermNode:';
    basicContents: pathTerm;
    listBlock: [ :theNode | ivNames , indexNameMap keys asArray ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | childNode |
          childNode := elementName = 'name'
            ifTrue: [ self indexElementNode: theNode element: (pathTerm instVarNamed: elementName) ]
            ifFalse: [ 
              elementName = 'updateBtree'
                ifTrue: [ self btreeNode: theNode btree: (pathTerm instVarNamed: elementName) ]
                ifFalse: [ 
                  elementName = 'updateDict'
                    ifTrue: [ self indexDictionaryNode: theNode indexDictionary: (pathTerm instVarNamed: elementName) ]
                    ifFalse: [ 
                      elementName = 'children'
                        ifTrue: [ self pathTermsNode: theNode pathTerms: (pathTerm instVarNamed: elementName) ]
                        ifFalse: [ 
                          elementName = 'offset'
                            ifTrue: [ (pathTerm instVarNamed: elementName) asTDObjectNode: theNode topez: theNode topez aspect: #'view' ]
                            ifFalse: [ 
                              elementName = 'needsDepList'
                                ifTrue: [ (pathTerm instVarNamed: elementName) asTDObjectNode: theNode topez: theNode topez aspect: #'view' ]
                                ifFalse: [ self indexNode: theNode index: (indexNameMap at: elementName) ] ] ] ] ] ].
          childNode == nil
            ifTrue: [ childNode := nil asTDObjectNode: theNode topez: theNode topez aspect: #'view' ].
          childNode
            name: elementName;
            yourself ];
    yourself.
  ^ node