as yet unclassified
mcReposNode: aTopez
  <topezNode: 'repos'>
  | node |
  node := aTopez installChildrenAt: '/mc'.
  node
    addChildNode:
      (TDPluggableNode new
        name: 'repos';
        readMe: self readMeRepos;
        basicContents: [ self buildRepositoryMap ];
        listBlock: [ :theNode | theNode basicContents value keys sorted ];
        elementBlock: [ :theNode :elementName :absentBlock | 
              (self packagesNode: (theNode basicContents value at: elementName))
                name: elementName;
                parent: theNode;
                yourself ];
        yourself)