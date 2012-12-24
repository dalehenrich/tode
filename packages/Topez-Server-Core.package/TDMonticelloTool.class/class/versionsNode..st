as yet unclassified
versionsNode: aTDMonticelloPackage
  ^ TDObjectNode new
    name: 'repos';
    readMe: 'TDMonticelloTool class>>versionsNode:';
    basicContents: aTDMonticelloPackage;
    listBlock: [ :theNode | theNode basicContents versionMap keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          (self filesNode: (theNode basicContents versionMap at: elementName))
            name: elementName;
            parent: theNode;
            yourself ];
    yourself