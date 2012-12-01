as yet unclassified
dotRunStNode: aTDTopezServer
    <topezNode: '.run.st'>
    | node |
    node := aTDTopezServer installChildrenAt: '/home'.
    node
        addChildNode:
            (TDPluggableLeafNode new
                name: '.run.st';
                contentsBlock: [ :theNode | theNode topez serverStatus evaluateString ];
                extensionBlock: [ :theNode | theNode class executableExtension ];
                renderAttributeBlock: [ :theNode | theNode class smalltalkTextAttributes ];
                yourself)