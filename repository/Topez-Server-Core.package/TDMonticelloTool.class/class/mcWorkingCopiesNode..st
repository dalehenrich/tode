as yet unclassified
mcWorkingCopiesNode: aTopez
  <topezNode: 'pkgs'>
  | node |
  node := aTopez ensureChildrenExistIn: '/mc'.
  node
    addChildNode:
      (TDObjectNode new
        name: 'pkgs';
        readMe: self readMePkgs;
        basicContents: [ self buildWorkingCopyList ];
        listBlock: [ :theNode | (theNode basicContents value collect: [ :each | each printString ]) sorted ];
        elementBlock: [ :theNode :elementName :absentBlock | 
              | wc |
              wc := theNode basicContents value
                detect: [ :each | each name = elementName ].
              (self workingCopyNode: wc)
                name: elementName;
                parent: theNode;
                yourself ];
        yourself)