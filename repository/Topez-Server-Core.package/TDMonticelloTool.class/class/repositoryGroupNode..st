as yet unclassified
repositoryGroupNode: anMCRepositoryGroup
  | group |
  group := self buildRepositoryList: anMCRepositoryGroup repositories.
  ^ TDObjectNode new
    name: 'repositoryGroup';
    readMe: 'TDMonticelloTool class>>repositoryGroupNode:';
    basicContents: group;
    listBlock: [ :theNode | ((1 to: theNode basicContents size) collect: [ :each | each asString ]) sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | repos |
          repos := theNode basicContents at: elementName asNumber.
          (self packagesNode: repos)
            name: elementName;
            parent: theNode;
            yourself ];
    yourself