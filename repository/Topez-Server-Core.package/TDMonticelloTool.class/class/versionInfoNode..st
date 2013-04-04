as yet unclassified
versionInfoNode: anMCVersionInfo
  ^ TDObjectNode new
    name: 'repos';
    readMe: 'TDMonticelloTool class>>versionInfoNode:';
    basicContents: anMCVersionInfo;
    listBlock: [ :theNode | (1 to: theNode basicContents size) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          (self versionInfoNode: (theNode basicContents at: elementName asNumber))
            name: elementName;
            parent: theNode;
            yourself ];
    yourself