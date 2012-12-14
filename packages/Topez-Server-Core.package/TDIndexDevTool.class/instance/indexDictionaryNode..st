as yet unclassified
indexDictionaryNode: indexDictionary
    | collBkt tuples key value term node |
    indexDictionary == nil
        ifTrue: [ ^ nil ].
    tuples := Array new.
    1 to: indexDictionary _basicSize do: [ :i | 
        collBkt := indexDictionary _at: i.
        1 to: collBkt numElements do: [ :j | 
            key := collBkt keyAt: j.
            value := collBkt valueAt: j.
            term := collBkt termAt: j.
            tuples addLast: (Array with: key with: value with: term) ] ].
    node := TDObjectNode new
        name: 'indexDictionary';
        topez: topez;
        readMe: 'TDIndexDevTool>>indexDictionaryNode:';
        basicContents: indexDictionary;
        listBlock: [ :theNode | (1 to: tuples size) collect: [ :each | each asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    elementName isAllDigits
                        ifFalse: [ ^ self error: 'No such node: ' , elementName printString ].
                    (self indexDictionaryTupleNode: indexDictionary tuple: (tuples at: elementName asNumber))
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node