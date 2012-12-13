as yet unclassified
pathTermNode: pathTerm
    | node ivNames indexNameMap |
    self nodes at: pathTerm ifPresent: [ :theNode | ^ theNode ].
    ivNames := #('name' 'updateBtree' 'updateDict' 'children').
    indexNameMap := Dictionary new.
    1 to: pathTerm size do: [ :index | 
        | theIndex indexName |
        theIndex := pathTerm at: index.
        indexName := index printString.
        indexNameMap at: indexName put: theIndex ].
    node := TDObjectNode new
        name: pathTerm name;
        topez: topez;
        basicContents: pathTerm;
        listBlock: [ :theNode | ivNames , indexNameMap keys asArray ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | childNode |
                    childNode := elementName = 'name'
                        ifTrue: [ self indexElementNode: (pathTerm instVarNamed: elementName) ]
                        ifFalse: [ 
                            childNode := elementName = 'updateBtree'
                                ifTrue: [ self btreeNode: (pathTerm instVarNamed: elementName) ]
                                ifFalse: [ 
                                    elementName = 'updateDict'
                                        ifTrue: [ self indexDictionaryNode: (pathTerm instVarNamed: elementName) ]
                                        ifFalse: [ 
                                            elementName = 'children'
                                                ifTrue: [ self pathTermsNode: (pathTerm instVarNamed: elementName) label: elementName ]
                                                ifFalse: [ self indexNode: (indexNameMap at: elementName) ] ] ] ].
                    childNode == nil
                        ifTrue: [ childNode := nil asTDObjectNode: self topez aspect: #'index' ].
                    childNode
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    self nodes at: pathTerm put: node.
    ^ node