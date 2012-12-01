as yet unclassified
dotRunNode: aTDTopezServer
    <topezNode: '.run'>
    | node |
    node := aTDTopezServer installChildrenAt: '/home'.
    node
        addChildNode:
            (TDObjectNode new
                name: '.run';
                basicContents: [ :topez | 
                            | node |
                            node := topez serverStatus evaluateStringResult asTDObjectNode: topez aspect: #'edit'.
                            node name: 'result'.
                            node ];
                listBlock: [ :theNode | {(theNode renderNameText: 'result' , theNode extension textAttributes: theNode class objectTextAttributes)} ];
                elementBlock: [ :theNode :elementName :absentBlock | 
                            elementName = 'result'
                                ifFalse: [ theNode error: 'No node named ' , elementName , ' is available.' ].
                            (theNode basicContents value: theNode topez)
                                parent: theNode;
                                yourself ];
                yourself)