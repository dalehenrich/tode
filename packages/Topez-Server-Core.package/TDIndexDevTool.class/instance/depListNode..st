as yet unclassified
depListNode: depList
    | node map |
    map := Dictionary new.
    node := TDObjectNode new
        name: 'depList';
        topez: topez;
        basicContents: depList;
        listBlock: [ :theNode | 
                    | names name |
                    names := Array new.
                    name := 0.
                    1 to: depList size by: 2 do: [ :index | 
                        | pathTerm |
                        pathTerm := depList at: index.
                        name := name + 1.
                        map
                            at: name asString
                            put:
                                {pathTerm.
                                (depList at: index + 1)}.
                        names add: name asString ].
                    names ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    (self pathTermsNode: (map at: elementName))
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node