as yet unclassified
pathTermsNode: array label: label
    | node |
    self nodes at: array ifPresent: [ :theNode | ^ theNode ].
    node := TDObjectNode new
        name: label;
        topez: topez;
        basicContents: array;
        listBlock: [ :theNode | (1 to: array size) collect: [ :each | each asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    (self pathTermNode: (array at: elementName asNumber))
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    self nodes at: array put: node.
    ^ node