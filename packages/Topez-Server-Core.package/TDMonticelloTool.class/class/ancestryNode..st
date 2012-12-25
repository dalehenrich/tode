as yet unclassified
ancestryNode: anArrayOfMCVersionInfo
  ^ TDObjectNode new
    name: 'repos';
    readMe: 'TDMonticelloTool class>>ancestryNode:';
    basicContents: anArrayOfMCVersionInfo;
    listBlock: [ :theNode | theNode basicContents collect: [ :each | each name ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | versionInfo |
          versionInfo := theNode basicContents detect: [ :each | each name = elementName ] ifNone: absentBlock.
          (versionInfo message asTDObjectNode: theNode topez aspect: #'monticello')
            name: elementName;
            parent: theNode;
            yourself ];
    yourself