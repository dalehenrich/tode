as yet unclassified
depListNode: depList
    | node map |
    map := Dictionary new.
    node := TDObjectNode new
        name: 'depList';
        topez: topez;
        basicContents: depList;
        listBlock: [ :theNode | 
                    | names |
                    names := Array new.
                    1 to: depList size do: [ :index | 
                        map at: index asString put: (depList at: index).
                        names add: index asString ].
                    names ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | index |
                    elementName isAllDigits
                        ifFalse: [ ^ self error: 'No such node: ' , elementName printString ].
                    index := elementName asNumber.
                    (index even
                        ifTrue: [ (map at: elementName) asTDObjectNode: self topez aspect: #'index' ]
                        ifFalse: [ self pathTermNode: (map at: elementName) ])
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node