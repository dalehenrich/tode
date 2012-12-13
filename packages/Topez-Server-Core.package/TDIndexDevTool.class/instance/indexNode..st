as yet unclassified
indexNode: theIndex
    | node |
    self nodes at: theIndex ifPresent: [ :theNode | ^ theNode ].
    node := TDObjectNode new
        name: (self pathNameForIndex: theIndex);
        topez: topez;
        basicContents: theIndex;
        listBlock: [ :theNode | 
                    #('indexDictionary' 'nscRoot' 'btreeRoot' 'lastElementClass')
                        , ((1 to: theIndex size) collect: [ :each | each asString ]) ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | childNode |
                    childNode := elementName = 'nscRoot'
                        ifTrue: [ self nscNode: (theIndex instVarNamed: elementName) ]
                        ifFalse: [ 
                            elementName = 'indexDictionary'
                                ifTrue: [ self indexDictionaryNode: (theIndex instVarNamed: elementName) ]
                                ifFalse: [ 
                                    elementName = 'btreeRoot'
                                        ifTrue: [ self btreeNode: (theIndex instVarNamed: elementName) rootTerms label: elementName ]
                                        ifFalse: [ 
                                            elementName = 'lastElementClass'
                                                ifTrue: [ (theIndex instVarNamed: elementName) asTDObjectNode: self topez aspect: #'index' ]
                                                ifFalse: [ self pathTermNode: (theIndex at: elementName asNumber) ] ] ] ].
                    childNode
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    self nodes at: theIndex put: node.
    ^ node