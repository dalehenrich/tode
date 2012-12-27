as yet unclassified
filesNode: aTDMonticelloVersion
  ^ TDObjectNode new
    name: 'repos';
    readMe: 'TDMonticelloTool class>>filesNode:';
    basicContents: aTDMonticelloVersion;
    listBlock: [ :theNode | (theNode basicContents versionReferenceMap values sorted collect: [ :versionRef | versionRef name ]) reversed ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          ((theNode basicContents versionReferenceMap at: elementName) asTDObjectNode: theNode topez aspect: #'monticello')
            name: elementName;
            parent: theNode;
            yourself ];
    yourself