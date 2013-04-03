as yet unclassified
packagesNode: aTDMonticelloRepository
  ^ TDObjectNode new
    name: 'repos';
    readMe: 'TDMonticelloTool class>>packagesNode:';
    basicContents: aTDMonticelloRepository;
    listBlock: [ :theNode | theNode basicContents packageMap keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | map |
          map := theNode basicContents packageMap.
          (self versionsNode: (map at: elementName))
            name: elementName;
            parent: theNode;
            yourself ];
    yourself