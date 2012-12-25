as yet unclassified
workingCopiesNode: anArrayOfTDMonticelloWorkingCopy
  ^ TDObjectNode new
    name: 'repos';
    readMe: 'TDMonticelloTool class>>workingCopiesNode:';
    basicContents: anArrayOfTDMonticelloWorkingCopy;
    listBlock: [ :theNode | (1 to: theNode basicContents size) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          (self workingCopyNode: (theNode basicContents at: elementName asNumber))
            name: elementName;
            parent: theNode;
            yourself ];
    yourself