as yet unclassified
leafNodeForClass: class selector: selector
    ^ TZObjectNode new
        name: class name , '>>' , selector;
        extension: '';
        elementBlock: [ :node :nodeName :absentBlock | self halt ];
        collectionBlock: [ :node | self halt ];
        listBlock: [ :node | self halt ];
        yourself