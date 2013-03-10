as yet unclassified
mcRepositoryNode: aTopez
  <topezNode: 'repos'>
  | node |
  node := aTopez ensureChildrenExistIn: '/mc'.
  node
    addChildNode:
      (TDPluggableNode new
        name: 'repos';
        readMe: self readMeRepos;
        basicContents: [ self buildRepositoryList ];
        listBlock: [ :theNode | (1 to: theNode basicContents value size) collect: [ :each | each asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
              | repos |
              repos := theNode basicContents value at: elementName asNumber.
              (self packagesNode: repos)
                name: elementName;
                parent: theNode;
                yourself ];
        yourself)