as yet unclassified
indexDictionaryTupleNode: parentNode indexDictionary: indexDict tuple: tuple
  | node tupleNames |
  tupleNames := #('child' 'parent' 'term' 'parentLink').
  node := TDObjectNode new
    name: 'indexDictionary';
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>indexDictionaryTupleNode:tuple:';
    basicContents: tuple;
    listBlock: [ :theNode | tupleNames ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          (elementName = 'parentLink'
            ifTrue: [ self nodeFor: theNode indexDictionary: indexDict tuple: tuple ]
            ifFalse: [ 
              | index value |
              index := tupleNames indexOf: elementName.
              value := tuple at: index.
              index = 1
                ifTrue: [ self indexElementNode: theNode element: value ]
                ifFalse: [ 
                  index = 2
                    ifTrue: [ 
                      (BucketValueBag _hasInstance: value)
                        ifTrue: [ self bucketValueBagNode: theNode bucketValueBag: value ]
                        ifFalse: [ self indexElementNode: theNode element: value ] ]
                    ifFalse: [ self pathTermNode: theNode pathTerm: value ] ] ])
            name: elementName;
            yourself ];
    yourself.
  ^ node